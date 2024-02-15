package com.aide.codemodel.abstraction;


import com.aide.codemodel.api.Entity;
import com.aide.codemodel.api.Variable;

public interface CodeRenderer{

	
	String getHTMLString(Variable variable);


	String getNameString(Entity entity);


	String getFullyQualifiedNameString(Entity entity);


	String getHTMLString(Entity entity);
}
