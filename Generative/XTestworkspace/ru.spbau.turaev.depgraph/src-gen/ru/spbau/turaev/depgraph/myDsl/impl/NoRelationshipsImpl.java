/**
 */
package ru.spbau.turaev.depgraph.myDsl.impl;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import ru.spbau.turaev.depgraph.myDsl.MyDslPackage;
import ru.spbau.turaev.depgraph.myDsl.NoRelationships;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>No Relationships</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link ru.spbau.turaev.depgraph.myDsl.impl.NoRelationshipsImpl#getRel <em>Rel</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class NoRelationshipsImpl extends MinimalEObjectImpl.Container implements NoRelationships
{
  /**
   * The default value of the '{@link #getRel() <em>Rel</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRel()
   * @generated
   * @ordered
   */
  protected static final String REL_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getRel() <em>Rel</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRel()
   * @generated
   * @ordered
   */
  protected String rel = REL_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected NoRelationshipsImpl()
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
    return MyDslPackage.Literals.NO_RELATIONSHIPS;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getRel()
  {
    return rel;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setRel(String newRel)
  {
    String oldRel = rel;
    rel = newRel;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, MyDslPackage.NO_RELATIONSHIPS__REL, oldRel, rel));
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
      case MyDslPackage.NO_RELATIONSHIPS__REL:
        return getRel();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case MyDslPackage.NO_RELATIONSHIPS__REL:
        setRel((String)newValue);
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
      case MyDslPackage.NO_RELATIONSHIPS__REL:
        setRel(REL_EDEFAULT);
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
      case MyDslPackage.NO_RELATIONSHIPS__REL:
        return REL_EDEFAULT == null ? rel != null : !REL_EDEFAULT.equals(rel);
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (rel: ");
    result.append(rel);
    result.append(')');
    return result.toString();
  }

} //NoRelationshipsImpl
