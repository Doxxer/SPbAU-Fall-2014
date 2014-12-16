/**
 */
package ru.spbau.turaev.depgraph.myDsl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>No Relationships</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link ru.spbau.turaev.depgraph.myDsl.NoRelationships#getRel <em>Rel</em>}</li>
 * </ul>
 * </p>
 *
 * @see ru.spbau.turaev.depgraph.myDsl.MyDslPackage#getNoRelationships()
 * @model
 * @generated
 */
public interface NoRelationships extends EObject
{
  /**
   * Returns the value of the '<em><b>Rel</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Rel</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Rel</em>' attribute.
   * @see #setRel(String)
   * @see ru.spbau.turaev.depgraph.myDsl.MyDslPackage#getNoRelationships_Rel()
   * @model
   * @generated
   */
  String getRel();

  /**
   * Sets the value of the '{@link ru.spbau.turaev.depgraph.myDsl.NoRelationships#getRel <em>Rel</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Rel</em>' attribute.
   * @see #getRel()
   * @generated
   */
  void setRel(String value);

} // NoRelationships
