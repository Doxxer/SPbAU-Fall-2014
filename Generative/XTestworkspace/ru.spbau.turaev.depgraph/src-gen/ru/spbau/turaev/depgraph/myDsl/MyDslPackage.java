/**
 */
package ru.spbau.turaev.depgraph.myDsl;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see ru.spbau.turaev.depgraph.myDsl.MyDslFactory
 * @model kind="package"
 * @generated
 */
public interface MyDslPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "myDsl";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.spbau.ru/turaev/depgraph/MyDsl";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "myDsl";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  MyDslPackage eINSTANCE = ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl.init();

  /**
   * The meta object id for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see ru.spbau.turaev.depgraph.myDsl.impl.ModelImpl
   * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Persons</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__PERSONS = 0;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.PersonImpl <em>Person</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see ru.spbau.turaev.depgraph.myDsl.impl.PersonImpl
   * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getPerson()
   * @generated
   */
  int PERSON = 1;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PERSON__NAME = 0;

  /**
   * The feature id for the '<em><b>Rels</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PERSON__RELS = 1;

  /**
   * The number of structural features of the '<em>Person</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PERSON_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.RelationshipDescriptionImpl <em>Relationship Description</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see ru.spbau.turaev.depgraph.myDsl.impl.RelationshipDescriptionImpl
   * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getRelationshipDescription()
   * @generated
   */
  int RELATIONSHIP_DESCRIPTION = 2;

  /**
   * The feature id for the '<em><b>Rel</b></em>' reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int RELATIONSHIP_DESCRIPTION__REL = 0;

  /**
   * The number of structural features of the '<em>Relationship Description</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int RELATIONSHIP_DESCRIPTION_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.NoRelationshipsImpl <em>No Relationships</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see ru.spbau.turaev.depgraph.myDsl.impl.NoRelationshipsImpl
   * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getNoRelationships()
   * @generated
   */
  int NO_RELATIONSHIPS = 3;

  /**
   * The feature id for the '<em><b>Rel</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int NO_RELATIONSHIPS__REL = 0;

  /**
   * The number of structural features of the '<em>No Relationships</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int NO_RELATIONSHIPS_FEATURE_COUNT = 1;


  /**
   * Returns the meta object for class '{@link ru.spbau.turaev.depgraph.myDsl.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the containment reference list '{@link ru.spbau.turaev.depgraph.myDsl.Model#getPersons <em>Persons</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Persons</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.Model#getPersons()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Persons();

  /**
   * Returns the meta object for class '{@link ru.spbau.turaev.depgraph.myDsl.Person <em>Person</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Person</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.Person
   * @generated
   */
  EClass getPerson();

  /**
   * Returns the meta object for the attribute '{@link ru.spbau.turaev.depgraph.myDsl.Person#getName <em>Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Name</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.Person#getName()
   * @see #getPerson()
   * @generated
   */
  EAttribute getPerson_Name();

  /**
   * Returns the meta object for the containment reference '{@link ru.spbau.turaev.depgraph.myDsl.Person#getRels <em>Rels</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Rels</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.Person#getRels()
   * @see #getPerson()
   * @generated
   */
  EReference getPerson_Rels();

  /**
   * Returns the meta object for class '{@link ru.spbau.turaev.depgraph.myDsl.RelationshipDescription <em>Relationship Description</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Relationship Description</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.RelationshipDescription
   * @generated
   */
  EClass getRelationshipDescription();

  /**
   * Returns the meta object for the reference list '{@link ru.spbau.turaev.depgraph.myDsl.RelationshipDescription#getRel <em>Rel</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference list '<em>Rel</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.RelationshipDescription#getRel()
   * @see #getRelationshipDescription()
   * @generated
   */
  EReference getRelationshipDescription_Rel();

  /**
   * Returns the meta object for class '{@link ru.spbau.turaev.depgraph.myDsl.NoRelationships <em>No Relationships</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>No Relationships</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.NoRelationships
   * @generated
   */
  EClass getNoRelationships();

  /**
   * Returns the meta object for the attribute '{@link ru.spbau.turaev.depgraph.myDsl.NoRelationships#getRel <em>Rel</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Rel</em>'.
   * @see ru.spbau.turaev.depgraph.myDsl.NoRelationships#getRel()
   * @see #getNoRelationships()
   * @generated
   */
  EAttribute getNoRelationships_Rel();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  MyDslFactory getMyDslFactory();

  /**
   * <!-- begin-user-doc -->
   * Defines literals for the meta objects that represent
   * <ul>
   *   <li>each class,</li>
   *   <li>each feature of each class,</li>
   *   <li>each enum,</li>
   *   <li>and each data type</li>
   * </ul>
   * <!-- end-user-doc -->
   * @generated
   */
  interface Literals
  {
    /**
     * The meta object literal for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see ru.spbau.turaev.depgraph.myDsl.impl.ModelImpl
     * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Persons</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__PERSONS = eINSTANCE.getModel_Persons();

    /**
     * The meta object literal for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.PersonImpl <em>Person</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see ru.spbau.turaev.depgraph.myDsl.impl.PersonImpl
     * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getPerson()
     * @generated
     */
    EClass PERSON = eINSTANCE.getPerson();

    /**
     * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PERSON__NAME = eINSTANCE.getPerson_Name();

    /**
     * The meta object literal for the '<em><b>Rels</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference PERSON__RELS = eINSTANCE.getPerson_Rels();

    /**
     * The meta object literal for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.RelationshipDescriptionImpl <em>Relationship Description</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see ru.spbau.turaev.depgraph.myDsl.impl.RelationshipDescriptionImpl
     * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getRelationshipDescription()
     * @generated
     */
    EClass RELATIONSHIP_DESCRIPTION = eINSTANCE.getRelationshipDescription();

    /**
     * The meta object literal for the '<em><b>Rel</b></em>' reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference RELATIONSHIP_DESCRIPTION__REL = eINSTANCE.getRelationshipDescription_Rel();

    /**
     * The meta object literal for the '{@link ru.spbau.turaev.depgraph.myDsl.impl.NoRelationshipsImpl <em>No Relationships</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see ru.spbau.turaev.depgraph.myDsl.impl.NoRelationshipsImpl
     * @see ru.spbau.turaev.depgraph.myDsl.impl.MyDslPackageImpl#getNoRelationships()
     * @generated
     */
    EClass NO_RELATIONSHIPS = eINSTANCE.getNoRelationships();

    /**
     * The meta object literal for the '<em><b>Rel</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute NO_RELATIONSHIPS__REL = eINSTANCE.getNoRelationships_Rel();

  }

} //MyDslPackage
