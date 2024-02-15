package com.aide.codemodel.api.callback;

public interface StopCallback {
   boolean stopSearchSymbols();

   boolean stopNamespacesLoad();

   boolean stopRefactoring();

   boolean stopMetrics();

   boolean stopUsageSearch();

   boolean stopCheckInFile();

   boolean stopCheck();

   boolean stopAsyncSynchronize();
}
