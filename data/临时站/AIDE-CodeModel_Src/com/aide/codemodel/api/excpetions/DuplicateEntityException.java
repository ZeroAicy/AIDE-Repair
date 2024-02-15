package com.aide.codemodel.api.excpetions;


public class DuplicateEntityException extends Exception {
   public DuplicateEntityException() {
   }

   @Override
   public Throwable fillInStackTrace() {
      return this;
   }
}
