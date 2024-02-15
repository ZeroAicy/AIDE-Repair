package com.aide.codemodel.api.excpetions;

public class AmbiguousEntityException extends Exception {
   public AmbiguousEntityException() {
   }

   @Override
   public Throwable fillInStackTrace() {
      return this;
   }
}
