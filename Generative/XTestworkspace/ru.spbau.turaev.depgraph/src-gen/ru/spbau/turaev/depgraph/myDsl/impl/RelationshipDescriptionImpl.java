/**
 */
package ru.spbau.turaev.depgraph.myDsl.impl;

import java.util.Collection;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.eclipse.emf.ecore.util.EObjectResolvingEList;

import ru.spbau.turaev.depgraph.myDsl.MyDslPackage;
import ru.spbau.turaev.depgraph.myDsl.Person;
import ru.spbau.turaev.depgraph.myDsl.RelationshipDescription;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Relationship Description</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link ru.spbau.turaev.depgraph.myDsl.impl.RelationshipDescriptionImpl#getRel <em>Rel</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class RelationshipDescriptionImpl extends MinimalEObjectImpl.Container implements RelationshipDescription
{
  /**
   * The cached value of the '{@link #getRel() <em>Rel</em>}' reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRel()
   * @generated
   * @ordered
   */
  protected EList<Person> rel;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected RelationshipDescriptionImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return MyDslPackage.Literals.RELATIONSHIP_DESCRIPTION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<Person> getRel()
  {
    if (rel == null)
    {
      rel = new EObjectResolvingEList<Person>(Person.class, this, MyDslPackage.RELATIONSHIP_DESCRIPTION__REL);
    }
    return rel;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case MyDslPackage.RELATIONSHIP_DESCRIPTION__REL:
        return getRel();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @SuppressWarnings("unchecked")
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case MyDslPackage.RELATIONSHIP_DESCRIPTION__REL:
        getRel().clear();
        getRel().addAll((Collection<? extends Person>)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case MyDslPackage.RELATIONSHIP_DESCRIPTION__REL:
        getRel().clear();
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case MyDslPackage.RELATIONSHIP_DESCRIPTION__REL:
        return rel != null && !rel.isEmpty();
    }
    return super.eIsSet(featureID);
  }

} //RelationshipDescriptionImpl
