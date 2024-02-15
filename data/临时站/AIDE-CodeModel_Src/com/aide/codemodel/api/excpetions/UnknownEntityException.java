package com.aide.codemodel.api.excpetions;


public class UnknownEntityException extends Exception {
   public UnknownEntityException() {
   }

   @Override
   public Throwable fillInStackTrace() {
      return this;
   }
}
