/**
 */
package ru.spbau.turaev.depgraph.myDsl;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Relationship Description</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link ru.spbau.turaev.depgraph.myDsl.RelationshipDescription#getRel <em>Rel</em>}</li>
 * </ul>
 * </p>
 *
 * @see ru.spbau.turaev.depgraph.myDsl.MyDslPackage#getRelationshipDescription()
 * @model
 * @generated
 */
public interface RelationshipDescription extends EObject
{
  /**
   * Returns the value of the '<em><b>Rel</b></em>' reference list.
   * The list contents are of type {@link ru.spbau.turaev.depgraph.myDsl.Person}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Rel</em>' reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Rel</em>' reference list.
   * @see ru.spbau.turaev.depgraph.myDsl.MyDslPackage#getRelationshipDescription_Rel()
   * @model
   * @generated
   */
  EList<Person> getRel();

} // RelationshipDescription
