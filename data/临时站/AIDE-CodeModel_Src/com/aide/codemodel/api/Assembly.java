package com.aide.codemodel.api;

import java.util.List;

public class Assembly {

    public String assembly;
    public String projectFilePath;
    public String rootNamespace;
    public String configuration;
    public List<String> defaultImports;
    public List<String> definedSymbols;
    public List<String> tagLibPaths;
    public String destinationPath;
    public String targetVersion;
    public boolean isExternal;
    public boolean isDebug;
    public boolean isRelease;

    public Assembly(String assembly, String projectFilePath, String rootNamespace, String configuration, List<String> defaultImports, List<String> definedSymbols, List<String> tagLibPaths, String destinationPath, String targetVersion, boolean isExternal, boolean isDebug, boolean isRelease) {
        this.assembly = assembly;
        this.projectFilePath = projectFilePath;
        this.rootNamespace = rootNamespace;
        this.configuration = configuration;
        this.defaultImports = defaultImports;
        this.definedSymbols = definedSymbols;
        this.tagLibPaths = tagLibPaths;
        this.destinationPath = destinationPath;
        this.targetVersion = targetVersion;
        this.isExternal = isExternal;
        this.isDebug = isDebug;
        this.isRelease = isRelease;
    }
}
