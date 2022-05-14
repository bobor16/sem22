/*
 * generated by Xtext 2.25.0
 */
grammar InternalGarden;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

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
import org.xtext.example.mydsl.services.GardenGrammarAccess;

}
@parser::members {
	private GardenGrammarAccess grammarAccess;

	public void setGrammarAccess(GardenGrammarAccess grammarAccess) {
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

// Entry rule entryRuleMetaModel
entryRuleMetaModel
:
{ before(grammarAccess.getMetaModelRule()); }
	 ruleMetaModel
{ after(grammarAccess.getMetaModelRule()); } 
	 EOF 
;

// Rule MetaModel
ruleMetaModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMetaModelAccess().getGroup()); }
		(rule__MetaModel__Group__0)
		{ after(grammarAccess.getMetaModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleComponent
entryRuleComponent
:
{ before(grammarAccess.getComponentRule()); }
	 ruleComponent
{ after(grammarAccess.getComponentRule()); } 
	 EOF 
;

// Rule Component
ruleComponent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getComponentAccess().getGroup()); }
		(rule__Component__Group__0)
		{ after(grammarAccess.getComponentAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleComponentType
entryRuleComponentType
:
{ before(grammarAccess.getComponentTypeRule()); }
	 ruleComponentType
{ after(grammarAccess.getComponentTypeRule()); } 
	 EOF 
;

// Rule ComponentType
ruleComponentType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getComponentTypeAccess().getAlternatives()); }
		(rule__ComponentType__Alternatives)
		{ after(grammarAccess.getComponentTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDevice
entryRuleDevice
:
{ before(grammarAccess.getDeviceRule()); }
	 ruleDevice
{ after(grammarAccess.getDeviceRule()); } 
	 EOF 
;

// Rule Device
ruleDevice 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDeviceAccess().getGroup()); }
		(rule__Device__Group__0)
		{ after(grammarAccess.getDeviceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDeviceType
entryRuleDeviceType
:
{ before(grammarAccess.getDeviceTypeRule()); }
	 ruleDeviceType
{ after(grammarAccess.getDeviceTypeRule()); } 
	 EOF 
;

// Rule DeviceType
ruleDeviceType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDeviceTypeAccess().getAlternatives()); }
		(rule__DeviceType__Alternatives)
		{ after(grammarAccess.getDeviceTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentType__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentTypeAccess().getTypeAssignment_0()); }
		(rule__ComponentType__TypeAssignment_0)
		{ after(grammarAccess.getComponentTypeAccess().getTypeAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getComponentTypeAccess().getTypeAssignment_1()); }
		(rule__ComponentType__TypeAssignment_1)
		{ after(grammarAccess.getComponentTypeAccess().getTypeAssignment_1()); }
	)
	|
	(
		{ before(grammarAccess.getComponentTypeAccess().getTypeAssignment_2()); }
		(rule__ComponentType__TypeAssignment_2)
		{ after(grammarAccess.getComponentTypeAccess().getTypeAssignment_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceTypeAccess().getGroup_0()); }
		(rule__DeviceType__Group_0__0)
		{ after(grammarAccess.getDeviceTypeAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getDeviceTypeAccess().getGroup_1()); }
		(rule__DeviceType__Group_1__0)
		{ after(grammarAccess.getDeviceTypeAccess().getGroup_1()); }
	)
	|
	(
		{ before(grammarAccess.getDeviceTypeAccess().getGroup_2()); }
		(rule__DeviceType__Group_2__0)
		{ after(grammarAccess.getDeviceTypeAccess().getGroup_2()); }
	)
	|
	(
		{ before(grammarAccess.getDeviceTypeAccess().getGroup_3()); }
		(rule__DeviceType__Group_3__0)
		{ after(grammarAccess.getDeviceTypeAccess().getGroup_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MetaModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MetaModel__Group__0__Impl
	rule__MetaModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MetaModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMetaModelAccess().getApplicationKeyword_0()); }
	'application'
	{ after(grammarAccess.getMetaModelAccess().getApplicationKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MetaModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MetaModel__Group__1__Impl
	rule__MetaModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MetaModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMetaModelAccess().getNameAssignment_1()); }
	(rule__MetaModel__NameAssignment_1)
	{ after(grammarAccess.getMetaModelAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MetaModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MetaModel__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MetaModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMetaModelAccess().getComponentsAssignment_2()); }
	(rule__MetaModel__ComponentsAssignment_2)*
	{ after(grammarAccess.getMetaModelAccess().getComponentsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Component__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__0__Impl
	rule__Component__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getComponentKeyword_0()); }
	'component'
	{ after(grammarAccess.getComponentAccess().getComponentKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__1__Impl
	rule__Component__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getNameAssignment_1()); }
	(rule__Component__NameAssignment_1)
	{ after(grammarAccess.getComponentAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__2__Impl
	rule__Component__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getLeftCurlyBracketKeyword_2()); }
	'{'
	{ after(grammarAccess.getComponentAccess().getLeftCurlyBracketKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__3__Impl
	rule__Component__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getAddressKeyword_3()); }
	'address'
	{ after(grammarAccess.getComponentAccess().getAddressKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__4__Impl
	rule__Component__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getEqualsSignKeyword_4()); }
	'='
	{ after(grammarAccess.getComponentAccess().getEqualsSignKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__5__Impl
	rule__Component__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getByte01Assignment_5()); }
	(rule__Component__Byte01Assignment_5)
	{ after(grammarAccess.getComponentAccess().getByte01Assignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__6__Impl
	rule__Component__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getCommaKeyword_6()); }
	','
	{ after(grammarAccess.getComponentAccess().getCommaKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__7__Impl
	rule__Component__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getByte02Assignment_7()); }
	(rule__Component__Byte02Assignment_7)
	{ after(grammarAccess.getComponentAccess().getByte02Assignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__8__Impl
	rule__Component__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getCommaKeyword_8()); }
	','
	{ after(grammarAccess.getComponentAccess().getCommaKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__9
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__9__Impl
	rule__Component__Group__10
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__9__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getByte03Assignment_9()); }
	(rule__Component__Byte03Assignment_9)
	{ after(grammarAccess.getComponentAccess().getByte03Assignment_9()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__10
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__10__Impl
	rule__Component__Group__11
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__10__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getCommaKeyword_10()); }
	','
	{ after(grammarAccess.getComponentAccess().getCommaKeyword_10()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__11
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__11__Impl
	rule__Component__Group__12
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__11__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getByte04Assignment_11()); }
	(rule__Component__Byte04Assignment_11)
	{ after(grammarAccess.getComponentAccess().getByte04Assignment_11()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__12
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__12__Impl
	rule__Component__Group__13
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__12__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getCommaKeyword_12()); }
	','
	{ after(grammarAccess.getComponentAccess().getCommaKeyword_12()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__13
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__13__Impl
	rule__Component__Group__14
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__13__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getByte05Assignment_13()); }
	(rule__Component__Byte05Assignment_13)
	{ after(grammarAccess.getComponentAccess().getByte05Assignment_13()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__14
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__14__Impl
	rule__Component__Group__15
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__14__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getCommaKeyword_14()); }
	','
	{ after(grammarAccess.getComponentAccess().getCommaKeyword_14()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__15
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__15__Impl
	rule__Component__Group__16
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__15__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getByte06Assignment_15()); }
	(rule__Component__Byte06Assignment_15)
	{ after(grammarAccess.getComponentAccess().getByte06Assignment_15()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__16
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__16__Impl
	rule__Component__Group__17
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__16__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getDevicesAssignment_16()); }
	(rule__Component__DevicesAssignment_16)*
	{ after(grammarAccess.getComponentAccess().getDevicesAssignment_16()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__17
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Component__Group__17__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Group__17__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComponentAccess().getRightCurlyBracketKeyword_17()); }
	'}'
	{ after(grammarAccess.getComponentAccess().getRightCurlyBracketKeyword_17()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Device__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__0__Impl
	rule__Device__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getDeviceKeyword_0()); }
	'device'
	{ after(grammarAccess.getDeviceAccess().getDeviceKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__1__Impl
	rule__Device__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getEqualsSignKeyword_1()); }
	'='
	{ after(grammarAccess.getDeviceAccess().getEqualsSignKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__2__Impl
	rule__Device__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getDeviceTypeAssignment_2()); }
	(rule__Device__DeviceTypeAssignment_2)
	{ after(grammarAccess.getDeviceAccess().getDeviceTypeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getGroup_3()); }
	(rule__Device__Group_3__0)?
	{ after(grammarAccess.getDeviceAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Device__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group_3__0__Impl
	rule__Device__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getInputKeyword_3_0()); }
	'@input'
	{ after(grammarAccess.getDeviceAccess().getInputKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group_3__1__Impl
	rule__Device__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getNumberSignKeyword_3_1()); }
	'#'
	{ after(grammarAccess.getDeviceAccess().getNumberSignKeyword_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Device__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceAccess().getInputPinAssignment_3_2()); }
	(rule__Device__InputPinAssignment_3_2)
	{ after(grammarAccess.getDeviceAccess().getInputPinAssignment_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DeviceType__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_0__0__Impl
	rule__DeviceType__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getMoistureSensorAction_0_0()); }
	()
	{ after(grammarAccess.getDeviceTypeAccess().getMoistureSensorAction_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getNameAssignment_0_1()); }
	(rule__DeviceType__NameAssignment_0_1)
	{ after(grammarAccess.getDeviceTypeAccess().getNameAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DeviceType__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_1__0__Impl
	rule__DeviceType__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getWaterPumpActuatorAction_1_0()); }
	()
	{ after(grammarAccess.getDeviceTypeAccess().getWaterPumpActuatorAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getNameAssignment_1_1()); }
	(rule__DeviceType__NameAssignment_1_1)
	{ after(grammarAccess.getDeviceTypeAccess().getNameAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DeviceType__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_2__0__Impl
	rule__DeviceType__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getTemperatureSensorAction_2_0()); }
	()
	{ after(grammarAccess.getDeviceTypeAccess().getTemperatureSensorAction_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getNameAssignment_2_1()); }
	(rule__DeviceType__NameAssignment_2_1)
	{ after(grammarAccess.getDeviceTypeAccess().getNameAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DeviceType__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_3__0__Impl
	rule__DeviceType__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getUltraSonicSensorAction_3_0()); }
	()
	{ after(grammarAccess.getDeviceTypeAccess().getUltraSonicSensorAction_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DeviceType__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDeviceTypeAccess().getNameAssignment_3_1()); }
	(rule__DeviceType__NameAssignment_3_1)
	{ after(grammarAccess.getDeviceTypeAccess().getNameAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MetaModel__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMetaModelAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getMetaModelAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MetaModel__ComponentsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMetaModelAccess().getComponentsComponentParserRuleCall_2_0()); }
		ruleComponent
		{ after(grammarAccess.getMetaModelAccess().getComponentsComponentParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getNameComponentTypeParserRuleCall_1_0()); }
		ruleComponentType
		{ after(grammarAccess.getComponentAccess().getNameComponentTypeParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Byte01Assignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getByte01STRINGTerminalRuleCall_5_0()); }
		RULE_STRING
		{ after(grammarAccess.getComponentAccess().getByte01STRINGTerminalRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Byte02Assignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getByte02STRINGTerminalRuleCall_7_0()); }
		RULE_STRING
		{ after(grammarAccess.getComponentAccess().getByte02STRINGTerminalRuleCall_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Byte03Assignment_9
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getByte03STRINGTerminalRuleCall_9_0()); }
		RULE_STRING
		{ after(grammarAccess.getComponentAccess().getByte03STRINGTerminalRuleCall_9_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Byte04Assignment_11
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getByte04STRINGTerminalRuleCall_11_0()); }
		RULE_STRING
		{ after(grammarAccess.getComponentAccess().getByte04STRINGTerminalRuleCall_11_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Byte05Assignment_13
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getByte05STRINGTerminalRuleCall_13_0()); }
		RULE_STRING
		{ after(grammarAccess.getComponentAccess().getByte05STRINGTerminalRuleCall_13_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__Byte06Assignment_15
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getByte06STRINGTerminalRuleCall_15_0()); }
		RULE_STRING
		{ after(grammarAccess.getComponentAccess().getByte06STRINGTerminalRuleCall_15_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__DevicesAssignment_16
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getDevicesDeviceParserRuleCall_16_0()); }
		ruleDevice
		{ after(grammarAccess.getComponentAccess().getDevicesDeviceParserRuleCall_16_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentType__TypeAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentTypeAccess().getTypeWaterControllerKeyword_0_0()); }
		(
			{ before(grammarAccess.getComponentTypeAccess().getTypeWaterControllerKeyword_0_0()); }
			'WaterController'
			{ after(grammarAccess.getComponentTypeAccess().getTypeWaterControllerKeyword_0_0()); }
		)
		{ after(grammarAccess.getComponentTypeAccess().getTypeWaterControllerKeyword_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentType__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentTypeAccess().getTypeGatewayControllerKeyword_1_0()); }
		(
			{ before(grammarAccess.getComponentTypeAccess().getTypeGatewayControllerKeyword_1_0()); }
			'GatewayController'
			{ after(grammarAccess.getComponentTypeAccess().getTypeGatewayControllerKeyword_1_0()); }
		)
		{ after(grammarAccess.getComponentTypeAccess().getTypeGatewayControllerKeyword_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentType__TypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentTypeAccess().getTypeGardenControllerKeyword_2_0()); }
		(
			{ before(grammarAccess.getComponentTypeAccess().getTypeGardenControllerKeyword_2_0()); }
			'GardenController'
			{ after(grammarAccess.getComponentTypeAccess().getTypeGardenControllerKeyword_2_0()); }
		)
		{ after(grammarAccess.getComponentTypeAccess().getTypeGardenControllerKeyword_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__DeviceTypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceAccess().getDeviceTypeDeviceTypeParserRuleCall_2_0()); }
		ruleDeviceType
		{ after(grammarAccess.getDeviceAccess().getDeviceTypeDeviceTypeParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__InputPinAssignment_3_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceAccess().getInputPinINTTerminalRuleCall_3_2_0()); }
		RULE_INT
		{ after(grammarAccess.getDeviceAccess().getInputPinINTTerminalRuleCall_3_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__NameAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceTypeAccess().getNameMoistureSensorKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getDeviceTypeAccess().getNameMoistureSensorKeyword_0_1_0()); }
			'MoistureSensor'
			{ after(grammarAccess.getDeviceTypeAccess().getNameMoistureSensorKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getDeviceTypeAccess().getNameMoistureSensorKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__NameAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceTypeAccess().getNameWaterPumpActuatorKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getDeviceTypeAccess().getNameWaterPumpActuatorKeyword_1_1_0()); }
			'WaterPumpActuator'
			{ after(grammarAccess.getDeviceTypeAccess().getNameWaterPumpActuatorKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getDeviceTypeAccess().getNameWaterPumpActuatorKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__NameAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceTypeAccess().getNameTemperatureSensorKeyword_2_1_0()); }
		(
			{ before(grammarAccess.getDeviceTypeAccess().getNameTemperatureSensorKeyword_2_1_0()); }
			'TemperatureSensor'
			{ after(grammarAccess.getDeviceTypeAccess().getNameTemperatureSensorKeyword_2_1_0()); }
		)
		{ after(grammarAccess.getDeviceTypeAccess().getNameTemperatureSensorKeyword_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DeviceType__NameAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceTypeAccess().getNameUltraSonicSensorKeyword_3_1_0()); }
		(
			{ before(grammarAccess.getDeviceTypeAccess().getNameUltraSonicSensorKeyword_3_1_0()); }
			'UltraSonicSensor'
			{ after(grammarAccess.getDeviceTypeAccess().getNameUltraSonicSensorKeyword_3_1_0()); }
		)
		{ after(grammarAccess.getDeviceTypeAccess().getNameUltraSonicSensorKeyword_3_1_0()); }
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
