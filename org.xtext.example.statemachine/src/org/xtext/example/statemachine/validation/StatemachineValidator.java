/*
 * generated by Xtext 2.23.0
 */
package org.xtext.example.statemachine.validation;

import org.eclipse.xtext.validation.Check;
import org.xtext.example.statemachine.statemachine.*;

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
public class StatemachineValidator extends AbstractStatemachineValidator {
	
	public static final String TRANSITION_TO_INITIAL_STATE = "TransitionToInitialState";
	public static final String TRANSITION_FROM_NON_LOCAL_INITIAL_STATE = "TransitionFromNonLocalInitialState";
	public static final String TRANSITION_FROM_FINAL_STATE = "TransitionFromFinalState";
	public static final String TRANSITION_TO_NON_LOCAL_FINAL_STATE = "TransitionToNonLocalFinalState";

	@Check
	public void checkTransitionToInitialState(Transition transition) {
		if (transition.getEnd() instanceof InitialState) {
			error("Transition is not allowed to an initial state",
					StatemachinePackage.Literals.TRANSITION__END,
					TRANSITION_TO_INITIAL_STATE);
		}
	}

	@Check
	public void checkTransitionFromNonLocalInitialState(Transition transition) {
		if (transition.getStart() instanceof InitialState) {
			if (transition.getStart().eContainer() != transition.eContainer()) {
				error("Transition is not allowed from a non-local initial state",
						StatemachinePackage.Literals.TRANSITION__START,
						TRANSITION_FROM_NON_LOCAL_INITIAL_STATE);
			}
		}
	}
	
	@Check
	public void checkTransitionFromFinalState(Transition transition) {
		if (transition.getStart() instanceof FinalState) {
			error("Transition is not allowed from a final state",
					StatemachinePackage.Literals.TRANSITION__START,
					TRANSITION_FROM_FINAL_STATE);
		}
	}

	@Check
	public void checkTransitionToNonLocalFinalState(Transition transition) {
		if (transition.getEnd() instanceof FinalState) {
			if (transition.getEnd().eContainer() != transition.eContainer()) {
				error("Transition is not allowed to a non-local final state",
						StatemachinePackage.Literals.TRANSITION__END,
						TRANSITION_TO_NON_LOCAL_FINAL_STATE);
			}
		}
	}

}
