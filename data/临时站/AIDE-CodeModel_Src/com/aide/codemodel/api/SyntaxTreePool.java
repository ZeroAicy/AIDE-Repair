package com.aide.codemodel.api;

public class SyntaxTreePool {
   public static final Object LOCK_ENGINE_COMPLETION = new Object();
   public static final Object LOCK_ENGINE = new Object();
   public static final Object LOCK_GUI = new Object();
   public static SyntaxTree SHARED_ENGINE_COMPLETION;
   public static SyntaxTree SHARED_ENGINE;
   public static SyntaxTree SHARED_GUI;

   public SyntaxTreePool() {
   }

   public static void compact() {
      synchronized(LOCK_ENGINE) {
         if (SHARED_ENGINE.memSize() > 10000000L) {
            shrink();
         }
      }
   }

   public static void shrink() {
      synchronized(LOCK_ENGINE_COMPLETION) {
         synchronized(LOCK_ENGINE) {
            synchronized(LOCK_GUI) {
               SHARED_ENGINE_COMPLETION = new SyntaxTree();
               SHARED_ENGINE = new SyntaxTree();
               SHARED_GUI = new SyntaxTree();
            }
         }
      }
   }

   static {
      shrink();
   }
}
