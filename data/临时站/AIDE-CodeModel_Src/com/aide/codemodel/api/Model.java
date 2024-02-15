package com.aide.codemodel.api;

import java.io.IOException;
import java.util.List;

import com.aide.codemodel.abstraction.CodeModel;
import com.aide.codemodel.abstraction.Language;
import com.aide.codemodel.api.callback.APISearcherCallback;
import com.aide.codemodel.api.callback.CodeCompleterCallback;
import com.aide.codemodel.api.callback.HighlighterCallback;
import com.aide.codemodel.api.callback.OpenFileCallback;
import com.aide.codemodel.api.callback.RefactoringCallback;
import com.aide.codemodel.api.callback.StopCallback;
import com.aide.codemodel.api.callback.StructureCallback;
import com.aide.codemodel.api.callback.SymbolSearcherCallback;
import com.aide.codemodel.api.callback.UsageSearcherCallback;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public class Model {
   protected static int modelCount = 0;
   public final StructureCallback myStructureCallback;
   public final HighlighterCallback myHighlighterCallback;
   public final SymbolSearcherCallback mySymbolSearcherCallback;
   public final CodeCompleterCallback myCodeCompleterCallback;
   public final RefactoringCallback myRefactoringCallback;
   public final UsageSearcherCallback myUsageSearcherCallback;
   public final APISearcherCallback myAPISearcherCallback;
   public final StopCallback myStopCallback;
   public final OpenFileCallback myOpenFileCallback;
   public final IdentifierSpace myIdentifiers;
   public final FileSpace myFileSpace;
   public final SyntaxTreeSpace myTrees;
   public final EntitySpace mySpace;
   public ErrorTable myErrorTable;

   public Model() {
      this(null, null, null, null,  null, null, null, null, null);
   }

   public Model(
      StructureCallback structureCallback,
      HighlighterCallback highlighterCallback,
      SymbolSearcherCallback symbolSearcherCallback,
      CodeCompleterCallback codeCompleterCallback,
      RefactoringCallback refactoringCallback,
      UsageSearcherCallback usageSearcherCallback,
      APISearcherCallback apiSearcherCallback,
      StopCallback stopCallback,
      OpenFileCallback openFileCallback
   ) {
      myStructureCallback = structureCallback;
      myHighlighterCallback = highlighterCallback;
      mySymbolSearcherCallback = symbolSearcherCallback;
      myCodeCompleterCallback = codeCompleterCallback;
      myRefactoringCallback = refactoringCallback;
      myUsageSearcherCallback = usageSearcherCallback;
      myAPISearcherCallback = apiSearcherCallback;
      myStopCallback = stopCallback;
      myOpenFileCallback = openFileCallback;
      ++modelCount;
      myIdentifiers = new IdentifierSpace();
      myFileSpace = new FileSpace(myIdentifiers, openFileCallback, stopCallback);
      myTrees = new SyntaxTreeSpace(myIdentifiers, myFileSpace);
      mySpace = new EntitySpace(myIdentifiers, myFileSpace, myTrees, stopCallback);
      myErrorTable = new ErrorTable(this);
   }

   @Override
   protected void finalize() throws Throwable {
      --modelCount;
   }

   public void close() {
   }

   protected void load(StoreInputStream stream) throws IOException {
      myFileSpace.loadEntries(stream);
      mySpace.loadEntries(stream);
      myIdentifiers.load(stream);
      myFileSpace.load(stream);
      mySpace.load(stream);
      myErrorTable.load(stream);
   }

   protected void store(StoreOutputStream stream) throws IOException {
      myFileSpace.storeEntries(stream);
      mySpace.storeEntries(stream);
      myIdentifiers.store(stream);
      myFileSpace.store(stream);
      mySpace.store(stream);
   }


   public void begin(boolean updateFileSpace) {
      myFileSpace.update(updateFileSpace);
      myTrees.update();
      mySpace.update();

      mySpace.preloadNamespaces();
   }

   public void shrink(boolean full) {
      myTrees.shrink(full);
      mySpace.shrink(full);
      if (full) {

         for (CodeModel codeModel : myFileSpace.getCodeModels()) {
            codeModel.update();
            for (Language language : codeModel.getLanguages()) {
               language.shrink();
            }
         }

         SyntaxTreePool.shrink();
      }
   }

   public void done() {
      myTrees.releaseSyntaxTrees();
      myFileSpace.close();
   }

   public void reconfigure() {
      mySpace.invalidateAll();
   }

   public void configure() {
      myFileSpace.configure();
      mySpace.invalidateNamespaces();
   }

   public void configureCodeModels(CodeModel[] codeModels){
      myFileSpace.configureCodeModels(codeModels);
   }

   public void configureCodeModelFilePatterns(CodeModel codeModel,List<String> filePatterns){
      myFileSpace.configureCodeModelFilePatterns(codeModel,filePatterns);
   }

   public CodeModel[] getCodeModels(){
      return myFileSpace.getCodeModels();
   }

   public void configureEncoding(String encoding) {
      myFileSpace.configureEncoding(encoding);
   }

   public void configureAssembly(int assembly,
                                 String projectAssembly,
                                 String projectFilePath,
                                 String rootNamespace,
                                 String configuration,
                                 List<String> defaultImports,
                                 List<String> defaultSymbols,
                                 List<String> targetLibs,
                                 String destinationPath,
                                 String targetVersion,
                                 boolean isExternal,
                                 boolean isDebug,
                                 boolean isRelease
                                 ){
      myFileSpace.configureAssembly(assembly,
              projectAssembly,
              projectFilePath,
              rootNamespace,
              configuration,
              defaultImports,
              defaultSymbols,
              targetLibs,
              destinationPath,
              targetVersion,
              isExternal,
              isDebug,
              isRelease);
   }

   public void configureReference(int assembly1, int assembly2) {
      myFileSpace.configureReference(assembly1, assembly2);
   }

   public void configureFile(FileEntry file, int assembly, CodeModel codeModel, boolean checked) {
      myFileSpace.configureFile(file, assembly, codeModel, checked);
   }

   public void configureResourceFile(FileEntry file, int assembly, String packageName) {
      myFileSpace.configureResourceFile(file, assembly, packageName);
   }
   

}
