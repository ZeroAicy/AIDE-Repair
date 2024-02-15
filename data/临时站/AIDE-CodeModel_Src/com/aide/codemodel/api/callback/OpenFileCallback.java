package com.aide.codemodel.api.callback;

import java.io.Reader;

import com.aide.codemodel.api.FileEntry;
import com.aide.codemodel.api.collections.SetOfFileEntry;

public interface OpenFileCallback {
   Reader getOpenFileReader(FileEntry file);

   long getOpenFileVersion(FileEntry file);

   long getOpenFileSize(FileEntry file);

   boolean areOpenFilesSynchronized();

   boolean isOpenFile(FileEntry file);

   SetOfFileEntry getOpenFiles();

   void update();
}
