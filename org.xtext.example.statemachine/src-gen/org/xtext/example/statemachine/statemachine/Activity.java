/**
 * generated by Xtext 2.24.0
 */
package org.xtext.example.statemachine.statemachine;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Activity</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtext.example.statemachine.statemachine.Activity#getTrigger <em>Trigger</em>}</li>
 *   <li>{@link org.xtext.example.statemachine.statemachine.Activity#getCondition <em>Condition</em>}</li>
 *   <li>{@link org.xtext.example.statemachine.statemachine.Activity#getAction <em>Action</em>}</li>
 * </ul>
 *
 * @see org.xtext.example.statemachine.statemachine.StatemachinePackage#getActivity()
 * @model
 * @generated
 */
public interface Activity extends EObject
{
  /**
   * Returns the value of the '<em><b>Trigger</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trigger</em>' attribute.
   * @see #setTrigger(String)
   * @see org.xtext.example.statemachine.statemachine.StatemachinePackage#getActivity_Trigger()
   * @model
   * @generated
   */
  String getTrigger();

  /**
   * Sets the value of the '{@link org.xtext.example.statemachine.statemachine.Activity#getTrigger <em>Trigger</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trigger</em>' attribute.
   * @see #getTrigger()
   * @generated
   */
  void setTrigger(String value);

  /**
   * Returns the value of the '<em><b>Condition</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Condition</em>' attribute.
   * @see #setCondition(String)
   * @see org.xtext.example.statemachine.statemachine.StatemachinePackage#getActivity_Condition()
   * @model
   * @generated
   */
  String getCondition();

  /**
   * Sets the value of the '{@link org.xtext.example.statemachine.statemachine.Activity#getCondition <em>Condition</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Condition</em>' attribute.
   * @see #getCondition()
   * @generated
   */
  void setCondition(String value);

  /**
   * Returns the value of the '<em><b>Action</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Action</em>' attribute.
   * @see #setAction(String)
   * @see org.xtext.example.statemachine.statemachine.StatemachinePackage#getActivity_Action()
   * @model
   * @generated
   */
  String getAction();

  /**
   * Sets the value of the '{@link org.xtext.example.statemachine.statemachine.Activity#getAction <em>Action</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Action</em>' attribute.
   * @see #getAction()
   * @generated
   */
  void setAction(String value);

} // Activity
