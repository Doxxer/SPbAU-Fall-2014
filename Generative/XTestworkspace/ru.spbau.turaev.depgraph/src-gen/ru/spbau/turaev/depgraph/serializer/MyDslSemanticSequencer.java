package ru.spbau.turaev.depgraph.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.serializer.acceptor.ISemanticSequenceAcceptor;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.diagnostic.ISemanticSequencerDiagnosticProvider;
import org.eclipse.xtext.serializer.diagnostic.ISerializationDiagnostic.Acceptor;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.GenericSequencer;
import org.eclipse.xtext.serializer.sequencer.ISemanticNodeProvider.INodesForEObjectProvider;
import org.eclipse.xtext.serializer.sequencer.ISemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;
import ru.spbau.turaev.depgraph.myDsl.Model;
import ru.spbau.turaev.depgraph.myDsl.MyDslPackage;
import ru.spbau.turaev.depgraph.myDsl.NoRelationships;
import ru.spbau.turaev.depgraph.myDsl.Person;
import ru.spbau.turaev.depgraph.myDsl.RelationshipDescription;
import ru.spbau.turaev.depgraph.services.MyDslGrammarAccess;

@SuppressWarnings("all")
public class MyDslSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private MyDslGrammarAccess grammarAccess;
	
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == MyDslPackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case MyDslPackage.MODEL:
				if(context == grammarAccess.getModelRule()) {
					sequence_Model(context, (Model) semanticObject); 
					return; 
				}
				else break;
			case MyDslPackage.NO_RELATIONSHIPS:
				if(context == grammarAccess.getNoRelationshipsRule()) {
					sequence_NoRelationships(context, (NoRelationships) semanticObject); 
					return; 
				}
				else break;
			case MyDslPackage.PERSON:
				if(context == grammarAccess.getPersonRule()) {
					sequence_Person(context, (Person) semanticObject); 
					return; 
				}
				else break;
			case MyDslPackage.RELATIONSHIP_DESCRIPTION:
				if(context == grammarAccess.getRelationshipDescriptionRule()) {
					sequence_RelationshipDescription(context, (RelationshipDescription) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null) errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Constraint:
	 *     persons+=Person*
	 */
	protected void sequence_Model(EObject context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     rel='is alone'
	 */
	protected void sequence_NoRelationships(EObject context, NoRelationships semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.NO_RELATIONSHIPS__REL) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.NO_RELATIONSHIPS__REL));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getNoRelationshipsAccess().getRelIsAloneKeyword_0(), semanticObject.getRel());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (name=ID (rels=RelationshipDescription | rels=NoRelationships))
	 */
	protected void sequence_Person(EObject context, Person semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (rel+=[Person|ID] rel+=[Person|ID]*)
	 */
	protected void sequence_RelationshipDescription(EObject context, RelationshipDescription semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
}
