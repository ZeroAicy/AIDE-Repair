package com.aide.codemodel.api;

import static java.io.File.separator;
import static java.io.File.separatorChar;
import static java.lang.System.getProperty;
import static java.lang.System.out;
import static java.util.Objects.requireNonNull;

import java.io.CharArrayReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.Reader;
import java.util.List;

import com.aide.codemodel.abstraction.CodeModel;
import com.aide.codemodel.abstraction.Language;
import com.aide.codemodel.api.callback.OpenFileCallback;
import com.aide.codemodel.api.collections.ListOfInt;
import com.aide.codemodel.api.collections.MapOfIntInt;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;

public class FileEntry {
    private final FileSpace myFileSpace;
    private final IdentifierSpace myIdentifiers;
    private final OpenFileCallback myOpenFileCallback;
    private int myNameIdentifier;
    private FileEntry myParentDir;
    private int myID;
    private MapOfIntInt myEntries;
    private ListOfInt myChildren;
    private FileEntry myParentArchiveFile;
    private String myRelativeArchiveEntryPath;
    private boolean myIsArchiveEntry;
    private boolean myIsArchive;
    private boolean myIsDirectory;
    private long myVersion;
    private boolean myLoaded;
    private boolean myExists;

    private long myDiskVersion;
    private long myLastModified;

    public FileEntry(IdentifierSpace identifiers, FileSpace fileSpace, OpenFileCallback openFileCallback, int nameIdentifier, FileEntry parentDir) {
        myIdentifiers = identifiers;
        myFileSpace = fileSpace;
        myOpenFileCallback = openFileCallback;
        myNameIdentifier = nameIdentifier;
        myParentDir = parentDir;
        myID = fileSpace.declareEntry(this);
        myVersion = -1L;
        init();
    }

    public FileEntry(IdentifierSpace identifiers, FileSpace fileSpace, OpenFileCallback openFileCallback) {
        myIdentifiers = identifiers;
        myFileSpace = fileSpace;
        myOpenFileCallback = openFileCallback;
        myVersion = -1L;
        init();
    }

    protected void load(StoreInputStream stream) throws IOException {
        myID = stream.readInt();
        myNameIdentifier = stream.readInt();
        myParentDir = myFileSpace.getFileEntry(stream.readInt());
        if (stream.readBoolean())
            myEntries = new MapOfIntInt(stream);

        myVersion = stream.readLong();
        myIsArchiveEntry = stream.readBoolean();
        myDiskVersion = stream.readLong();
        myLastModified = stream.readLong();
    }

    protected void store(StoreOutputStream stream) throws IOException {
        stream.writeInt(myID);
        stream.writeInt(myNameIdentifier);
        stream.writeInt(myFileSpace.getID(myParentDir));
        stream.writeBoolean(myEntries != null);
        if (myEntries != null)
            myEntries.store(stream);

        stream.writeLong(myVersion);
        stream.writeBoolean(myIsArchiveEntry);
        stream.writeLong(myDiskVersion);
        stream.writeLong(myLastModified);
    }

    public boolean canCodeAnalyzer() {
        CodeModel codeModel = getCodeModel();
        if (codeModel == null) return false;
        for (Language language : codeModel.getLanguages()) {
            if (language.getCodeAnalyzer() != null) {
                return true;
            }
        }
        return false;
    }

    public boolean isCheckedSolutionFile() {
        return myFileSpace.isCheckedSolutionFile(this);
    }

    public boolean isSolutionFile() {
        return myFileSpace.isSolutionFile(this);
    }

    public String getExtensionString() {
        String filename = getFullNameString();
        return filename.lastIndexOf('.') > 0 ? filename.substring(filename.lastIndexOf('.')) : "";
    }

    public String getFullNameString() {
        return myIdentifiers.getString(myNameIdentifier);
    }

    public int getNameIdentifier() {
        String filename = getFullNameString();
        if (!isDirectory() && filename.lastIndexOf('.') > 0)
            filename = filename.substring(0, filename.lastIndexOf('.'));
        return myIdentifiers.get(filename);
    }

    public int getFullNameIdentifier() {
        return myNameIdentifier;
    }

    public int getAssembly() {
        return myFileSpace.getAssembly(this);
    }

    public boolean isReferable(FileEntry file) {
        return myFileSpace.isReferableFrom(this, file);
    }

    public String getRootNamespace() {
        return myFileSpace.getRootNamespace(this);
    }

    public List<String> getDefaultImports() {
        return myFileSpace.getDefaultImports(this);
    }

    public List<String> getDefinedSymbols() {
        return myFileSpace.getDefinedSymbols(this);
    }

    public FileEntry getParentDirectory() {
        return myParentDir;
    }

    public long getSize() {
        load();
        if (isOpen()) {
            return myOpenFileCallback.getOpenFileSize(this);
        } else {
            String path = getPathString();
            return new File(path).exists() ? new File(path).length() : 0L;
        }
    }

    public FileEntry getParentArchive() {
        return myParentArchiveFile;
    }

    public String getRelativeArchivePath() {
        return myRelativeArchiveEntryPath;
    }

    public boolean isArchive() {
        return myIsArchive;
    }

    public boolean isArchiveEntry() {
        return myIsArchiveEntry;
    }

    public long getArchiveVersion() {
        return !isArchiveEntry() ? 0L : getParentArchive().getSyntaxVersion();
    }

    public boolean isEnclosingDir(FileEntry child) {
        while (!child.isRootDirectory()) {
            if (child == this) {
                return true;
            }

            child = child.getParentDirectory();
        }

        return false;
    }

    public void createSyntaxTree(
            Language language,
            SyntaxTree ast, boolean errors, boolean parseCode, boolean parseComments, String completionStr, int completionLine, int completionColumn
    ) {
        myFileSpace.createSyntaxTree(this,language, ast, errors, parseCode, parseComments, completionStr, completionLine, completionColumn);
    }

    public long getSyntaxVersion() {
        return myFileSpace.getSyntaxVersion(this);
    }

    public long getDiskVersion() {
        load();
        return isOpen() ? fetchDiskVersion() : getVersion();
    }

    public long getVersion() {
        load();
        if (!myIsArchiveEntry && isOpen()) {
            myVersion = -1L;
            return myOpenFileCallback.getOpenFileVersion(this);
        } else {
            if (myVersion == -1L) {
                myVersion = fetchDiskVersion();
            }

            return myVersion;
        }
    }

    public Reader getReaderForInclude() {
        myFileSpace.fileIncluded(this);
        return getReader();
    }

    public boolean isOpen() {
        return myOpenFileCallback != null && myOpenFileCallback.isOpenFile(this);
    }

    public boolean isDirectory() {
        load();
        return myIsDirectory;
    }

    public boolean isRootDirectory() {
        return myParentDir == null;
    }

    public Reader getReader() {
        load();
        if (isOpen()) {
            return myOpenFileCallback.getOpenFileReader(this);
        } else if (!exists()) {
            return new CharArrayReader(new char[0]);
        } else {
            if (!isSynchronized())
                out.println("File not synchronized " + getPathString());

            try {
                String encoding = myFileSpace.getEncoding();
                if (myIsArchiveEntry) {
                    String filePath = myParentArchiveFile.getPathString();
                    return myFileSpace
                            .createLineEndingNormalizedReader(getCodeModel().
                                    getArchiveEntryReader(filePath, getRelativeArchivePath(), encoding)
                            );
                } else {
                    return myFileSpace.createLineEndingNormalizedReader(myFileSpace.createBomReader(new FileInputStream(getPathString()), encoding));
                }
            } catch (IOException e) {
                return new CharArrayReader(new char[0]);
            }
        }
    }

    public String getPathString() {
        if (myParentDir == null && !requireNonNull(getProperty("os.name")).toUpperCase().contains("WINDOWS")) {
            return separator;
        } else {
            String path = "";
            if (myParentDir != null)
                path = myParentDir.getPathString();

            if (path.length() > 1)
                path = path + separator;

            return path + getFullNameString();
        }
    }

    public int getChildCount() {
        load();
        return myChildren == null ? 0 : myChildren.size();
    }

    public FileEntry getChildEntry(int number) {
        return myFileSpace.getFileEntry(myChildren.get(number));
    }

    public FileEntry getEntry(String name) {
        if (myEntries == null) {
            myEntries = new MapOfIntInt();
        }

        int nameidentifier = myIdentifiers.get(name);
        if (!myEntries.contains(nameidentifier)) {
            FileEntry entry = new FileEntry(myIdentifiers, myFileSpace, myOpenFileCallback, nameidentifier, this);
            myEntries.insert(nameidentifier, entry.getID());
        }

        return myFileSpace.getFileEntry(myEntries.get(nameidentifier));
    }

    public FileEntry getSuccessorFile() {
        FileEntry dir = getParentDirectory();
        int count = dir.getChildCount();

        for (int i = 0; i < count - 1; ++i) {
            if (dir.getChildEntry(i) == this) {
                return dir.getChildEntry(i + 1);
            }
        }

        return null;
    }


    public CodeModel getCodeModel() {
        return myFileSpace.getCodeModel(this);
    }

    public int getID() {
        return myID;
    }

    public boolean isSynchronized() {
        if (isOpen()) {
            return true;
        } else if (myVersion == -1L) {
            return true;
        } else if (myIsArchive) {
            return myVersion == fetchDiskVersion();
        } else if (!myIsDirectory && !myIsArchiveEntry) {
            return myVersion == fetchFileDiskVersion();
        } else {
            return true;
        }
    }

    public void synchronize() {
        if (myParentDir != null) {
            myParentDir.myLoaded = false;
        }

        if (myParentArchiveFile != null) {
            myParentArchiveFile.myLoaded = false;

            for (FileEntry dir = myParentDir; dir != null && dir != myParentArchiveFile; dir = dir.myParentDir) {
                dir.myLoaded = false;
            }
        }

        if (myChildren != null) {
            myChildren.clear();
        }

        if (!myIsDirectory && !myIsArchiveEntry && myVersion != -1L) {
            myVersion = fetchFileDiskVersion();
        } else {
            myVersion = -1L;
        }

        init();
    }

    public boolean exists() {
        load();
        return myExists;
    }

    @Override
    public int hashCode() {
        return myID;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof FileEntry)) {
            return false;
        } else {
            return ((FileEntry) obj).getID() == myID;
        }
    }

    private void init() {
        myLoaded = false;
        myParentArchiveFile = null;
        myRelativeArchiveEntryPath = null;
        myIsArchiveEntry = false;
        myIsDirectory = false;
        myIsArchive = false;
        myExists = false;
    }

    private long fetchDiskVersion() {
        if (!exists()) {
            return 0L;
        } else if (myIsArchive) {
            return getCodeModel().getArchiveVersion(getPathString());
        } else if (myIsArchiveEntry) {
            return myParentArchiveFile.getVersion();
        } else {
            return isRootDirectory() && requireNonNull(getProperty("os.name")).toUpperCase().contains("WINDOWS") ? 0L : fetchFileDiskVersion();
        }
    }

    private long fetchFileDiskVersion() {
        File f = new File(getPathString());
        if (f.isFile()) {
            long lastModified = f.lastModified();
            if (myLastModified == -1 || myLastModified != lastModified) {
                myLastModified = lastModified;
                try {
                    byte[] bytes = myFileSpace.bytes;
                    myFileSpace.crc32.reset();
                    FileInputStream fileInputStream = new FileInputStream(f);
                    while (true) {
                        int read = fileInputStream.read(bytes);
                        if (read == -1)
                            break;

                        myFileSpace.crc32.update(bytes, 0, read);
                    }
                    fileInputStream.close();
                    myDiskVersion = myFileSpace.crc32.getValue();
                    if (myDiskVersion == 0) {
                        myDiskVersion = 4294967296L;
                    }
                } catch (IOException ignored) {
                }
            }
            return myDiskVersion;
        } else {
            return f.isDirectory() ? f.lastModified() : 0L;
        }
    }

    private void sort(String[] names, int i, int j) {
        if (i < j) {
            int oldi = i;
            int oldj = j;
            int z = i + (j - i) / 2;
            String pivot = names[z];

            while (i <= j) {
                while (names[i].compareTo(pivot) < 0) {
                    ++i;
                }

                while (pivot.compareTo(names[j]) < 0) {
                    --j;
                }

                if (i <= j) {
                    String temp = names[j];
                    names[j] = names[i];
                    names[i] = temp;
                    ++i;
                    --j;
                }
            }

            sort(names, oldi, j);
            sort(names, i, oldj);
        }
    }

    private void load() {
        if (!myLoaded) {
            if (myParentDir != null)
                myParentDir.load();

            if (myLoaded)
                return;

            myLoaded = true;
            String path = getPathString();
            if (isRootDirectory() && requireNonNull(getProperty("os.name")).toUpperCase().contains("WINDOWS")) {
                for (char c = 'A'; c <= 'Z'; ++c) {
                    String drivePath = c + ":";
                    addDirectory(drivePath);
                }

                myExists = true;
            } else if (getCodeModel() != null && getCodeModel().isSupportArchiveFile()) {
                myIsArchive = true;

                try {
                    myVersion = getCodeModel().getArchiveVersion(path);
                    String[] entries = getCodeModel().getArchiveEntries(path);
                    if (entries != null) {
                        myParentArchiveFile = this;
                        myIsDirectory = true;

                        for (String relativePath : entries) {
                            if (relativePath != null)
                                addCustomEntry(relativePath, relativePath);
                        }
                    }
                } catch (IOException ignored) {
                }

                myExists = true;
            } else if (new File(path).isDirectory()) {
                String[] entries = new File(path + separatorChar).list();
                if (entries != null) {
                    for (String entry : entries) {
                        String entryPath = path + separatorChar + entry;
                        if (new File(entryPath).isDirectory())
                            addDirectory(entry);
                        else
                            addFile(entry);
                    }
                }

                myExists = true;
            }
        }
    }

    private void addCustomEntry(String relativePath, String entryPath) {
        int p = relativePath.indexOf(47);
        if (p == -1)
            p = relativePath.indexOf(92);

        if (p == -1) {
            FileEntry file = addFile(relativePath);
            file.myLoaded = true;
            file.myIsArchiveEntry = true;
            file.myRelativeArchiveEntryPath = entryPath;
            file.myParentArchiveFile = myParentArchiveFile;
        } else {
            String dirname = relativePath.substring(0, p);
            FileEntry dir = getEntry(dirname);
            if (!dir.myExists)
                addDirectory(dirname);

            dir.myLoaded = true;
            dir.myIsArchiveEntry = true;
            dir.myParentArchiveFile = myParentArchiveFile;
            dir.myRelativeArchiveEntryPath = entryPath;
            dir.addCustomEntry(relativePath.substring(p + 1), entryPath);
        }
    }

    private FileEntry addDirectory(String name) {
        FileEntry entry = getEntry(name);
        entry.myIsDirectory = true;
        entry.myExists = true;
        if (myChildren == null)
            myChildren = new ListOfInt();

        myChildren.add(entry.getID());
        return entry;
    }

    private FileEntry addFile(String name) {
        FileEntry entry = getEntry(name);
        entry.myIsDirectory = false;
        entry.myExists = true;
        if (myChildren == null)
            myChildren = new ListOfInt();

        myChildren.add(entry.getID());
        return entry;
    }
}
