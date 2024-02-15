package com.aide.codemodel.api.callback;

import com.aide.codemodel.api.Entity;

public interface SymbolSearcherCallback {
   void listStarted(String msg);

   void listFinished();

   void listToLarge();

   void classesListFinished();

   void classesListToLarge();

   void entityFound(Entity entity);
}
