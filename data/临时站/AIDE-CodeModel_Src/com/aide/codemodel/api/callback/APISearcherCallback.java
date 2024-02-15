package com.aide.codemodel.api.callback;

import com.aide.codemodel.api.Entity;

public interface APISearcherCallback {
   void entityFound(Entity entity);

   void listCompleted();

   void listStarted();
}
