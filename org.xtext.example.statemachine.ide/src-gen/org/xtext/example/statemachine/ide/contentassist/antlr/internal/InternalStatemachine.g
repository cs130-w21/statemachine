/*
 * generated by Xtext 2.24.0
 */
grammar InternalStatemachine;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.example.statemachine.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.statemachine.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.example.statemachine.services.StatemachineGrammarAccess;

}
@parser::members {
	private StatemachineGrammarAccess grammarAccess;

	public void setGrammarAccess(StatemachineGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleStateMachine
entryRuleStateMachine
:
{ before(grammarAccess.getStateMachineRule()); }
	 ruleStateMachine
{ after(grammarAccess.getStateMachineRule()); } 
	 EOF 
;

// Rule StateMachine
ruleStateMachine 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStateMachineAccess().getGroup()); }
		(rule__StateMachine__Group__0)
		{ after(grammarAccess.getStateMachineAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAbstractState
entryRuleAbstractState
:
{ before(grammarAccess.getAbstractStateRule()); }
	 ruleAbstractState
{ after(grammarAccess.getAbstractStateRule()); } 
	 EOF 
;

// Rule AbstractState
ruleAbstractState 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAbstractStateAccess().getAlternatives()); }
		(rule__AbstractState__Alternatives)
		{ after(grammarAccess.getAbstractStateAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleState
entryRuleState
:
{ before(grammarAccess.getStateRule()); }
	 ruleState
{ after(grammarAccess.getStateRule()); } 
	 EOF 
;

// Rule State
ruleState 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStateAccess().getGroup()); }
		(rule__State__Group__0)
		{ after(grammarAccess.getStateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInitialState
entryRuleInitialState
:
{ before(grammarAccess.getInitialStateRule()); }
	 ruleInitialState
{ after(grammarAccess.getInitialStateRule()); } 
	 EOF 
;

// Rule InitialState
ruleInitialState 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getInitialStateAccess().getGroup()); }
		(rule__InitialState__Group__0)
		{ after(grammarAccess.getInitialStateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFinalState
entryRuleFinalState
:
{ before(grammarAccess.getFinalStateRule()); }
	 ruleFinalState
{ after(grammarAccess.getFinalStateRule()); } 
	 EOF 
;

// Rule FinalState
ruleFinalState 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFinalStateAccess().getGroup()); }
		(rule__FinalState__Group__0)
		{ after(grammarAccess.getFinalStateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTransition
entryRuleTransition
:
{ before(grammarAccess.getTransitionRule()); }
	 ruleTransition
{ after(grammarAccess.getTransitionRule()); } 
	 EOF 
;

// Rule Transition
ruleTransition 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTransitionAccess().getGroup()); }
		(rule__Transition__Group__0)
		{ after(grammarAccess.getTransitionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleActivity
entryRuleActivity
:
{ before(grammarAccess.getActivityRule()); }
	 ruleActivity
{ after(grammarAccess.getActivityRule()); } 
	 EOF 
;

// Rule Activity
ruleActivity 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getActivityAccess().getGroup()); }
		(rule__Activity__Group__0)
		{ after(grammarAccess.getActivityAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AbstractState__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAbstractStateAccess().getStateParserRuleCall_0()); }
		ruleState
		{ after(grammarAccess.getAbstractStateAccess().getStateParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getAbstractStateAccess().getInitialStateParserRuleCall_1()); }
		ruleInitialState
		{ after(grammarAccess.getAbstractStateAccess().getInitialStateParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getAbstractStateAccess().getFinalStateParserRuleCall_2()); }
		ruleFinalState
		{ after(grammarAccess.getAbstractStateAccess().getFinalStateParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__0__Impl
	rule__StateMachine__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getStateKeyword_0()); }
	'state'
	{ after(grammarAccess.getStateMachineAccess().getStateKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__1__Impl
	rule__StateMachine__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getMachineKeyword_1()); }
	'machine'
	{ after(grammarAccess.getStateMachineAccess().getMachineKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__2__Impl
	rule__StateMachine__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getNameAssignment_2()); }
	(rule__StateMachine__NameAssignment_2)
	{ after(grammarAccess.getStateMachineAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getGroup_3()); }
	(rule__StateMachine__Group_3__0)?
	{ after(grammarAccess.getStateMachineAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StateMachine__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group_3__0__Impl
	rule__StateMachine__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getLeftCurlyBracketKeyword_3_0()); }
	'{'
	{ after(grammarAccess.getStateMachineAccess().getLeftCurlyBracketKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group_3__1__Impl
	rule__StateMachine__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getStatesAssignment_3_1()); }
	(rule__StateMachine__StatesAssignment_3_1)*
	{ after(grammarAccess.getStateMachineAccess().getStatesAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group_3__2__Impl
	rule__StateMachine__Group_3__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getTransitionsAssignment_3_2()); }
	(rule__StateMachine__TransitionsAssignment_3_2)*
	{ after(grammarAccess.getStateMachineAccess().getTransitionsAssignment_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StateMachine__Group_3__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__Group_3__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateMachineAccess().getRightCurlyBracketKeyword_3_3()); }
	'}'
	{ after(grammarAccess.getStateMachineAccess().getRightCurlyBracketKeyword_3_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__0__Impl
	rule__State__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateKeyword_0()); }
	'state'
	{ after(grammarAccess.getStateAccess().getStateKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__1__Impl
	rule__State__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getNameAssignment_1()); }
	(rule__State__NameAssignment_1)
	{ after(grammarAccess.getStateAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getGroup_2()); }
	(rule__State__Group_2__0)?
	{ after(grammarAccess.getStateAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_2__0__Impl
	rule__State__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getLeftCurlyBracketKeyword_2_0()); }
	'{'
	{ after(grammarAccess.getStateAccess().getLeftCurlyBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_2__1__Impl
	rule__State__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getActivitiesAssignment_2_1()); }
	(rule__State__ActivitiesAssignment_2_1)*
	{ after(grammarAccess.getStateAccess().getActivitiesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_2__2__Impl
	rule__State__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStatesAssignment_2_2()); }
	(rule__State__StatesAssignment_2_2)*
	{ after(grammarAccess.getStateAccess().getStatesAssignment_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_2__3__Impl
	rule__State__Group_2__4
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getTransitionsAssignment_2_3()); }
	(rule__State__TransitionsAssignment_2_3)*
	{ after(grammarAccess.getStateAccess().getTransitionsAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_2__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_2__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getRightCurlyBracketKeyword_2_4()); }
	'}'
	{ after(grammarAccess.getStateAccess().getRightCurlyBracketKeyword_2_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InitialState__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InitialState__Group__0__Impl
	rule__InitialState__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InitialState__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInitialStateAccess().getInitialKeyword_0()); }
	'initial'
	{ after(grammarAccess.getInitialStateAccess().getInitialKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InitialState__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InitialState__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InitialState__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInitialStateAccess().getNameAssignment_1()); }
	(rule__InitialState__NameAssignment_1)
	{ after(grammarAccess.getInitialStateAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FinalState__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FinalState__Group__0__Impl
	rule__FinalState__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FinalState__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFinalStateAccess().getFinalKeyword_0()); }
	'final'
	{ after(grammarAccess.getFinalStateAccess().getFinalKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FinalState__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FinalState__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FinalState__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFinalStateAccess().getNameAssignment_1()); }
	(rule__FinalState__NameAssignment_1)
	{ after(grammarAccess.getFinalStateAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Transition__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__0__Impl
	rule__Transition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getStartAssignment_0()); }
	(rule__Transition__StartAssignment_0)
	{ after(grammarAccess.getTransitionAccess().getStartAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__1__Impl
	rule__Transition__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getHyphenMinusGreaterThanSignKeyword_1()); }
	'->'
	{ after(grammarAccess.getTransitionAccess().getHyphenMinusGreaterThanSignKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__2__Impl
	rule__Transition__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getEndAssignment_2()); }
	(rule__Transition__EndAssignment_2)
	{ after(grammarAccess.getTransitionAccess().getEndAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getGroup_3()); }
	(rule__Transition__Group_3__0)?
	{ after(grammarAccess.getTransitionAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Transition__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group_3__0__Impl
	rule__Transition__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getColonKeyword_3_0()); }
	':'
	{ after(grammarAccess.getTransitionAccess().getColonKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Transition__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTransitionAccess().getActivityAssignment_3_1()); }
	(rule__Transition__ActivityAssignment_3_1)
	{ after(grammarAccess.getTransitionAccess().getActivityAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Activity__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group__0__Impl
	rule__Activity__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getTriggerAssignment_0()); }
	(rule__Activity__TriggerAssignment_0)
	{ after(grammarAccess.getActivityAccess().getTriggerAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group__1__Impl
	rule__Activity__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getGroup_1()); }
	(rule__Activity__Group_1__0)?
	{ after(grammarAccess.getActivityAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getGroup_2()); }
	(rule__Activity__Group_2__0)?
	{ after(grammarAccess.getActivityAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Activity__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group_1__0__Impl
	rule__Activity__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getLeftSquareBracketKeyword_1_0()); }
	'['
	{ after(grammarAccess.getActivityAccess().getLeftSquareBracketKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group_1__1__Impl
	rule__Activity__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getConditionAssignment_1_1()); }
	(rule__Activity__ConditionAssignment_1_1)
	{ after(grammarAccess.getActivityAccess().getConditionAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getRightSquareBracketKeyword_1_2()); }
	']'
	{ after(grammarAccess.getActivityAccess().getRightSquareBracketKeyword_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Activity__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group_2__0__Impl
	rule__Activity__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getSolidusKeyword_2_0()); }
	'/'
	{ after(grammarAccess.getActivityAccess().getSolidusKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Activity__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getActivityAccess().getActionAssignment_2_1()); }
	(rule__Activity__ActionAssignment_2_1)
	{ after(grammarAccess.getActivityAccess().getActionAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StateMachine__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getStateMachineAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__StatesAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getStatesAbstractStateParserRuleCall_3_1_0()); }
		ruleAbstractState
		{ after(grammarAccess.getStateMachineAccess().getStatesAbstractStateParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateMachine__TransitionsAssignment_3_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateMachineAccess().getTransitionsTransitionParserRuleCall_3_2_0()); }
		ruleTransition
		{ after(grammarAccess.getStateMachineAccess().getTransitionsTransitionParserRuleCall_3_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getStateAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__ActivitiesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getActivitiesActivityParserRuleCall_2_1_0()); }
		ruleActivity
		{ after(grammarAccess.getStateAccess().getActivitiesActivityParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__StatesAssignment_2_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getStatesAbstractStateParserRuleCall_2_2_0()); }
		ruleAbstractState
		{ after(grammarAccess.getStateAccess().getStatesAbstractStateParserRuleCall_2_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__TransitionsAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getTransitionsTransitionParserRuleCall_2_3_0()); }
		ruleTransition
		{ after(grammarAccess.getStateAccess().getTransitionsTransitionParserRuleCall_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InitialState__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInitialStateAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getInitialStateAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FinalState__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFinalStateAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getFinalStateAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__StartAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTransitionAccess().getStartAbstractStateCrossReference_0_0()); }
		(
			{ before(grammarAccess.getTransitionAccess().getStartAbstractStateIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getTransitionAccess().getStartAbstractStateIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getTransitionAccess().getStartAbstractStateCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__EndAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTransitionAccess().getEndAbstractStateCrossReference_2_0()); }
		(
			{ before(grammarAccess.getTransitionAccess().getEndAbstractStateIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getTransitionAccess().getEndAbstractStateIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getTransitionAccess().getEndAbstractStateCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Transition__ActivityAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTransitionAccess().getActivityActivityParserRuleCall_3_1_0()); }
		ruleActivity
		{ after(grammarAccess.getTransitionAccess().getActivityActivityParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__TriggerAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getActivityAccess().getTriggerIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getActivityAccess().getTriggerIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__ConditionAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getActivityAccess().getConditionSTRINGTerminalRuleCall_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getActivityAccess().getConditionSTRINGTerminalRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Activity__ActionAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getActivityAccess().getActionSTRINGTerminalRuleCall_2_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getActivityAccess().getActionSTRINGTerminalRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
