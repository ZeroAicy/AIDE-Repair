package com.aide.codemodel.api;

public class Modifiers {
   public static final int PUBLIC_MODIFIER = 1;
   public static final int DOTNETPRIVATE_MODIFIER = 2;
   public static final int JAVAPRIVATE_MODIFIER = 4;
   public static final int PROTECTED_MODIFIER = 8;
   public static final int INTERNAL_MODIFIER = 16;
   public static final int PACKAGEPRIVATE_MODIFIER = 32;
   public static final int STATIC_MODIFIER = 64;
   public static final int SEALED_MODIFIER = 128;
   public static final int READONLY_MODIFIER = 256;
   public static final int CONST_MODIFIER = 512;
   public static final int VOLATILE_MODIFIER = 1024;
   public static final int SYNCHRONIZED_MODIFIER = 2048;
   public static final int TRANSIENT_MODIFIER = 4096;
   public static final int STRICT_MODIFIER = 8192;
   public static final int ABSTRACT_MODIFIER = 16384;
   public static final int VIRTUAL_MODIFIER = 32768;
   public static final int OVERRIDE_MODIFIER = 65536;
   public static final int UNSAFE_MODIFIER = 131072;
   public static final int NEW_MODIFIER = 262144;
   public static final int EXTERN_MODIFIER = 524288;
   public static final int EVENT_MODIFIER = 1048576;
   public static final int PARTIAL_MODIFIER = 2097152;
   public static final int PARAMS_MODIFIER = 4194304;
   public static final int OUT_MODIFIER = 8388608;
   public static final int REF_MODIFIER = 16777216;
   public static final int DELEGATE_MODIFIER = 33554432;
   public static final int STRUCT_MODIFIER = 67108864;
   public static final int INTERFACE_MODIFIER = 134217728;
   public static final int ENUM_MODIFIER = 268435456;
   public static final int ANNOTATION_MODIFIER = 536870912;

   public Modifiers() {
   }

   public static boolean isPackagePrivate(int modifiers) {
      return (modifiers & 32) != 0;
   }

   public static boolean isInternal(int modifiers) {
      return (modifiers & 16) != 0;
   }

   public static boolean isNew(int modifiers) {
      return (modifiers & 262144) != 0;
   }

   public static boolean isExtern(int modifiers) {
      return (modifiers & 524288) != 0;
   }

   public static boolean isOverride(int modifiers) {
      return (modifiers & 65536) != 0;
   }

   public static boolean isSealed(int modifiers) {
      return (modifiers & 128) != 0;
   }

   public static boolean isVirtual(int modifiers) {
      return (modifiers & 32768) != 0;
   }

   public static boolean isReadonly(int modifiers) {
      return (modifiers & 256) != 0;
   }

   public static boolean isConst(int modifiers) {
      return (modifiers & 512) != 0;
   }

   public static boolean isParams(int modifiers) {
      return (modifiers & 4194304) != 0;
   }

   public static boolean isRef(int modifiers) {
      return (modifiers & 16777216) != 0;
   }

   public static boolean isOut(int modifiers) {
      return (modifiers & 8388608) != 0;
   }

   public static boolean isEvent(int modifiers) {
      return (modifiers & 1048576) != 0;
   }

   public static boolean isPublic(int modifiers) {
      return (modifiers & 1) != 0;
   }

   public static boolean isProtected(int modifiers) {
      return (modifiers & 8) != 0;
   }

   public static boolean isCSPrivate(int modifiers) {
      return (modifiers & 2) != 0;
   }

   public static boolean isJavaPrivate(int modifiers) {
      return (modifiers & 4) != 0;
   }

   public static boolean isEnum(int modifiers) {
      return (modifiers & 268435456) != 0;
   }

   public static boolean isAbstract(int modifiers) {
      return (modifiers & 16384) != 0;
   }

   public static boolean isStatic(int modifiers) {
      return (modifiers & 64) != 0;
   }

   public static boolean isStrict(int modifiers) {
      return (modifiers & 8192) != 0;
   }
}
