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

// Entry rule entryRuleDomainmodel
entryRuleDomainmodel
:
{ before(grammarAccess.getDomainmodelRule()); }
	 ruleDomainmodel
{ after(grammarAccess.getDomainmodelRule()); } 
	 EOF 
;

// Rule Domainmodel
ruleDomainmodel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDomainmodelAccess().getElementsAssignment()); }
		(rule__Domainmodel__ElementsAssignment)*
		{ after(grammarAccess.getDomainmodelAccess().getElementsAssignment()); }
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

// Entry rule entryRuleGardenBed
entryRuleGardenBed
:
{ before(grammarAccess.getGardenBedRule()); }
	 ruleGardenBed
{ after(grammarAccess.getGardenBedRule()); } 
	 EOF 
;

// Rule GardenBed
ruleGardenBed 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getGardenBedAccess().getNameAssignment()); }
		(rule__GardenBed__NameAssignment)
		{ after(grammarAccess.getGardenBedAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleWaterTank
entryRuleWaterTank
:
{ before(grammarAccess.getWaterTankRule()); }
	 ruleWaterTank
{ after(grammarAccess.getWaterTankRule()); } 
	 EOF 
;

// Rule WaterTank
ruleWaterTank 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getWaterTankAccess().getNameAssignment()); }
		(rule__WaterTank__NameAssignment)
		{ after(grammarAccess.getWaterTankAccess().getNameAssignment()); }
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

// Entry rule entryRuleTemperatureSensor
entryRuleTemperatureSensor
:
{ before(grammarAccess.getTemperatureSensorRule()); }
	 ruleTemperatureSensor
{ after(grammarAccess.getTemperatureSensorRule()); } 
	 EOF 
;

// Rule TemperatureSensor
ruleTemperatureSensor 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTemperatureSensorAccess().getNameAssignment()); }
		(rule__TemperatureSensor__NameAssignment)
		{ after(grammarAccess.getTemperatureSensorAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMoistureSensor
entryRuleMoistureSensor
:
{ before(grammarAccess.getMoistureSensorRule()); }
	 ruleMoistureSensor
{ after(grammarAccess.getMoistureSensorRule()); } 
	 EOF 
;

// Rule MoistureSensor
ruleMoistureSensor 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMoistureSensorAccess().getNameAssignment()); }
		(rule__MoistureSensor__NameAssignment)
		{ after(grammarAccess.getMoistureSensorAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUltrasonicSensor
entryRuleUltrasonicSensor
:
{ before(grammarAccess.getUltrasonicSensorRule()); }
	 ruleUltrasonicSensor
{ after(grammarAccess.getUltrasonicSensorRule()); } 
	 EOF 
;

// Rule UltrasonicSensor
ruleUltrasonicSensor 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUltrasonicSensorAccess().getNameAssignment()); }
		(rule__UltrasonicSensor__NameAssignment)
		{ after(grammarAccess.getUltrasonicSensorAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleWaterPump
entryRuleWaterPump
:
{ before(grammarAccess.getWaterPumpRule()); }
	 ruleWaterPump
{ after(grammarAccess.getWaterPumpRule()); } 
	 EOF 
;

// Rule WaterPump
ruleWaterPump 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getWaterPumpAccess().getNameAssignment()); }
		(rule__WaterPump__NameAssignment)
		{ after(grammarAccess.getWaterPumpAccess().getNameAssignment()); }
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
		{ before(grammarAccess.getComponentTypeAccess().getGardenBedParserRuleCall_0()); }
		ruleGardenBed
		{ after(grammarAccess.getComponentTypeAccess().getGardenBedParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getComponentTypeAccess().getWaterTankParserRuleCall_1()); }
		ruleWaterTank
		{ after(grammarAccess.getComponentTypeAccess().getWaterTankParserRuleCall_1()); }
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
		{ before(grammarAccess.getDeviceTypeAccess().getTemperatureSensorParserRuleCall_0()); }
		ruleTemperatureSensor
		{ after(grammarAccess.getDeviceTypeAccess().getTemperatureSensorParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getDeviceTypeAccess().getMoistureSensorParserRuleCall_1()); }
		ruleMoistureSensor
		{ after(grammarAccess.getDeviceTypeAccess().getMoistureSensorParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getDeviceTypeAccess().getUltrasonicSensorParserRuleCall_2()); }
		ruleUltrasonicSensor
		{ after(grammarAccess.getDeviceTypeAccess().getUltrasonicSensorParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getDeviceTypeAccess().getWaterPumpParserRuleCall_3()); }
		ruleWaterPump
		{ after(grammarAccess.getDeviceTypeAccess().getWaterPumpParserRuleCall_3()); }
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
	{ before(grammarAccess.getComponentAccess().getComponentTypeAssignment_1()); }
	(rule__Component__ComponentTypeAssignment_1)
	{ after(grammarAccess.getComponentAccess().getComponentTypeAssignment_1()); }
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
	{ before(grammarAccess.getComponentAccess().getDevicesAssignment_3()); }
	(rule__Component__DevicesAssignment_3)*
	{ after(grammarAccess.getComponentAccess().getDevicesAssignment_3()); }
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
	{ before(grammarAccess.getComponentAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getComponentAccess().getRightCurlyBracketKeyword_4()); }
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
	{ before(grammarAccess.getDeviceAccess().getTypeAssignment_2()); }
	(rule__Device__TypeAssignment_2)
	{ after(grammarAccess.getDeviceAccess().getTypeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Domainmodel__ElementsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDomainmodelAccess().getElementsComponentParserRuleCall_0()); }
		ruleComponent
		{ after(grammarAccess.getDomainmodelAccess().getElementsComponentParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__ComponentTypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getComponentTypeComponentTypeParserRuleCall_1_0()); }
		ruleComponentType
		{ after(grammarAccess.getComponentAccess().getComponentTypeComponentTypeParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Component__DevicesAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComponentAccess().getDevicesDeviceParserRuleCall_3_0()); }
		ruleDevice
		{ after(grammarAccess.getComponentAccess().getDevicesDeviceParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GardenBed__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGardenBedAccess().getNameGardenBedKeyword_0()); }
		(
			{ before(grammarAccess.getGardenBedAccess().getNameGardenBedKeyword_0()); }
			'GardenBed'
			{ after(grammarAccess.getGardenBedAccess().getNameGardenBedKeyword_0()); }
		)
		{ after(grammarAccess.getGardenBedAccess().getNameGardenBedKeyword_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WaterTank__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWaterTankAccess().getNameWaterTankKeyword_0()); }
		(
			{ before(grammarAccess.getWaterTankAccess().getNameWaterTankKeyword_0()); }
			'WaterTank'
			{ after(grammarAccess.getWaterTankAccess().getNameWaterTankKeyword_0()); }
		)
		{ after(grammarAccess.getWaterTankAccess().getNameWaterTankKeyword_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Device__TypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDeviceAccess().getTypeDeviceTypeParserRuleCall_2_0()); }
		ruleDeviceType
		{ after(grammarAccess.getDeviceAccess().getTypeDeviceTypeParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemperatureSensor__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTemperatureSensorAccess().getNameTemperatureSensorKeyword_0()); }
		(
			{ before(grammarAccess.getTemperatureSensorAccess().getNameTemperatureSensorKeyword_0()); }
			'temperatureSensor'
			{ after(grammarAccess.getTemperatureSensorAccess().getNameTemperatureSensorKeyword_0()); }
		)
		{ after(grammarAccess.getTemperatureSensorAccess().getNameTemperatureSensorKeyword_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MoistureSensor__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMoistureSensorAccess().getNameMoistureSensorKeyword_0()); }
		(
			{ before(grammarAccess.getMoistureSensorAccess().getNameMoistureSensorKeyword_0()); }
			'moistureSensor'
			{ after(grammarAccess.getMoistureSensorAccess().getNameMoistureSensorKeyword_0()); }
		)
		{ after(grammarAccess.getMoistureSensorAccess().getNameMoistureSensorKeyword_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UltrasonicSensor__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUltrasonicSensorAccess().getNameUltraSonicSensorKeyword_0()); }
		(
			{ before(grammarAccess.getUltrasonicSensorAccess().getNameUltraSonicSensorKeyword_0()); }
			'ultraSonicSensor'
			{ after(grammarAccess.getUltrasonicSensorAccess().getNameUltraSonicSensorKeyword_0()); }
		)
		{ after(grammarAccess.getUltrasonicSensorAccess().getNameUltraSonicSensorKeyword_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WaterPump__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWaterPumpAccess().getNameWaterPumpKeyword_0()); }
		(
			{ before(grammarAccess.getWaterPumpAccess().getNameWaterPumpKeyword_0()); }
			'waterPump'
			{ after(grammarAccess.getWaterPumpAccess().getNameWaterPumpKeyword_0()); }
		)
		{ after(grammarAccess.getWaterPumpAccess().getNameWaterPumpKeyword_0()); }
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