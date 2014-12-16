/*
* generated by Xtext
*/
package ru.spbau.turaev.depgraph.ui.contentassist.antlr;

import java.util.Collection;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;

import com.google.inject.Inject;

import ru.spbau.turaev.depgraph.services.MyDslGrammarAccess;

public class MyDslParser extends AbstractContentAssistParser {
	
	@Inject
	private MyDslGrammarAccess grammarAccess;
	
	private Map<AbstractElement, String> nameMappings;
	
	@Override
	protected ru.spbau.turaev.depgraph.ui.contentassist.antlr.internal.InternalMyDslParser createParser() {
		ru.spbau.turaev.depgraph.ui.contentassist.antlr.internal.InternalMyDslParser result = new ru.spbau.turaev.depgraph.ui.contentassist.antlr.internal.InternalMyDslParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}
	
	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getPersonAccess().getRelsAlternatives_2_0(), "rule__Person__RelsAlternatives_2_0");
					put(grammarAccess.getPersonAccess().getGroup(), "rule__Person__Group__0");
					put(grammarAccess.getRelationshipDescriptionAccess().getGroup(), "rule__RelationshipDescription__Group__0");
					put(grammarAccess.getRelationshipDescriptionAccess().getGroup_2(), "rule__RelationshipDescription__Group_2__0");
					put(grammarAccess.getModelAccess().getPersonsAssignment(), "rule__Model__PersonsAssignment");
					put(grammarAccess.getPersonAccess().getNameAssignment_1(), "rule__Person__NameAssignment_1");
					put(grammarAccess.getPersonAccess().getRelsAssignment_2(), "rule__Person__RelsAssignment_2");
					put(grammarAccess.getRelationshipDescriptionAccess().getRelAssignment_1(), "rule__RelationshipDescription__RelAssignment_1");
					put(grammarAccess.getRelationshipDescriptionAccess().getRelAssignment_2_1(), "rule__RelationshipDescription__RelAssignment_2_1");
					put(grammarAccess.getNoRelationshipsAccess().getRelAssignment(), "rule__NoRelationships__RelAssignment");
				}
			};
		}
		return nameMappings.get(element);
	}
	
	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			ru.spbau.turaev.depgraph.ui.contentassist.antlr.internal.InternalMyDslParser typedParser = (ru.spbau.turaev.depgraph.ui.contentassist.antlr.internal.InternalMyDslParser) parser;
			typedParser.entryRuleModel();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}		
	}
	
	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}
	
	public MyDslGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(MyDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
