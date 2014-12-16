/**
 */
package ru.spbau.turaev.depgraph.myDsl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Person</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link ru.spbau.turaev.depgraph.myDsl.Person#getName <em>Name</em>}</li>
 *   <li>{@link ru.spbau.turaev.depgraph.myDsl.Person#getRels <em>Rels</em>}</li>
 * </ul>
 * </p>
 *
 * @see ru.spbau.turaev.depgraph.myDsl.MyDslPackage#getPerson()
 * @model
 * @generated
 */
public interface Person extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see ru.spbau.turaev.depgraph.myDsl.MyDslPackage#getPerson_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link ru.spbau.turaev.depgraph.myDsl.Person#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Rels</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Rels</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Rels</em>' containment reference.
   * @see #setRels(EObject)
   * @see ru.spbau.turaev.depgraph.myDsl.MyDslPackage#getPerson_Rels()
   * @model containment="true"
   * @generated
   */
  EObject getRels();

  /**
   * Sets the value of the '{@link ru.spbau.turaev.depgraph.myDsl.Person#getRels <em>Rels</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Rels</em>' containment reference.
   * @see #getRels()
   * @generated
   */
  void setRels(EObject value);

} // Person
