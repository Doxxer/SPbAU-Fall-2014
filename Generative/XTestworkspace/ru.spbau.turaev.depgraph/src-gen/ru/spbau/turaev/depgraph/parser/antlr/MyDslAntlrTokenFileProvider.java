/*
* generated by Xtext
*/
package ru.spbau.turaev.depgraph.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class MyDslAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.tokens");
	}
}