package com.aide.codemodel.abstraction;


import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import com.aide.codemodel.api.FileEntry;
import com.aide.codemodel.api.Model;
import com.aide.codemodel.api.SyntaxTree;

public interface CodeModel{
    void init(Model model);

    String getName();


    String[] getDefaultFilePatterns();


    List<Language> getLanguages();

    void update();

    boolean isSupportArchiveFile();

    long getArchiveVersion(String filePath);


    String[] getArchiveEntries(String filePath) throws IOException;


    Reader getArchiveEntryReader(String filePath,  String entryName,  String encoding) throws IOException;

    void closeArchive();


    Compiler getCompiler();


    void processVersion(FileEntry file, Language language);

    void fillSyntaxTree(FileEntry file,  Reader reader,  Map<Language, SyntaxTree> astMap, boolean errors);

}
