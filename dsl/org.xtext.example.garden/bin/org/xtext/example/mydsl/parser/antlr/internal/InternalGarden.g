/*
 * generated by Xtext 2.25.0
 */
grammar InternalGarden;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.example.mydsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl.services.GardenGrammarAccess;

}

@parser::members {

 	private GardenGrammarAccess grammarAccess;

    public InternalGardenParser(TokenStream input, GardenGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Domainmodel";
   	}

   	@Override
   	protected GardenGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleDomainmodel
entryRuleDomainmodel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDomainmodelRule()); }
	iv_ruleDomainmodel=ruleDomainmodel
	{ $current=$iv_ruleDomainmodel.current; }
	EOF;

// Rule Domainmodel
ruleDomainmodel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getDomainmodelAccess().getElementsComponentParserRuleCall_0());
			}
			lv_elements_0_0=ruleComponent
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getDomainmodelRule());
				}
				add(
					$current,
					"elements",
					lv_elements_0_0,
					"org.xtext.example.mydsl.Garden.Component");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleComponent
entryRuleComponent returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getComponentRule()); }
	iv_ruleComponent=ruleComponent
	{ $current=$iv_ruleComponent.current; }
	EOF;

// Rule Component
ruleComponent returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='component'
		{
			newLeafNode(otherlv_0, grammarAccess.getComponentAccess().getComponentKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getComponentAccess().getComponentTypeComponentTypeParserRuleCall_1_0());
				}
				lv_componentType_1_0=ruleComponentType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getComponentRule());
					}
					set(
						$current,
						"componentType",
						lv_componentType_1_0,
						"org.xtext.example.mydsl.Garden.ComponentType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='{'
		{
			newLeafNode(otherlv_2, grammarAccess.getComponentAccess().getLeftCurlyBracketKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getComponentAccess().getDevicesDeviceParserRuleCall_3_0());
				}
				lv_devices_3_0=ruleDevice
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getComponentRule());
					}
					add(
						$current,
						"devices",
						lv_devices_3_0,
						"org.xtext.example.mydsl.Garden.Device");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_4='}'
		{
			newLeafNode(otherlv_4, grammarAccess.getComponentAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleComponentType
entryRuleComponentType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getComponentTypeRule()); }
	iv_ruleComponentType=ruleComponentType
	{ $current=$iv_ruleComponentType.current; }
	EOF;

// Rule ComponentType
ruleComponentType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getComponentTypeAccess().getGardenBedParserRuleCall_0());
		}
		this_GardenBed_0=ruleGardenBed
		{
			$current = $this_GardenBed_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getComponentTypeAccess().getWaterTankParserRuleCall_1());
		}
		this_WaterTank_1=ruleWaterTank
		{
			$current = $this_WaterTank_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleGardenBed
entryRuleGardenBed returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getGardenBedRule()); }
	iv_ruleGardenBed=ruleGardenBed
	{ $current=$iv_ruleGardenBed.current; }
	EOF;

// Rule GardenBed
ruleGardenBed returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0='GardenBed'
			{
				newLeafNode(lv_name_0_0, grammarAccess.getGardenBedAccess().getNameGardenBedKeyword_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getGardenBedRule());
				}
				setWithLastConsumed($current, "name", lv_name_0_0, "GardenBed");
			}
		)
	)
;

// Entry rule entryRuleWaterTank
entryRuleWaterTank returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getWaterTankRule()); }
	iv_ruleWaterTank=ruleWaterTank
	{ $current=$iv_ruleWaterTank.current; }
	EOF;

// Rule WaterTank
ruleWaterTank returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0='WaterTank'
			{
				newLeafNode(lv_name_0_0, grammarAccess.getWaterTankAccess().getNameWaterTankKeyword_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getWaterTankRule());
				}
				setWithLastConsumed($current, "name", lv_name_0_0, "WaterTank");
			}
		)
	)
;

// Entry rule entryRuleDevice
entryRuleDevice returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDeviceRule()); }
	iv_ruleDevice=ruleDevice
	{ $current=$iv_ruleDevice.current; }
	EOF;

// Rule Device
ruleDevice returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='device'
		{
			newLeafNode(otherlv_0, grammarAccess.getDeviceAccess().getDeviceKeyword_0());
		}
		otherlv_1='='
		{
			newLeafNode(otherlv_1, grammarAccess.getDeviceAccess().getEqualsSignKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDeviceAccess().getTypeDeviceTypeParserRuleCall_2_0());
				}
				lv_type_2_0=ruleDeviceType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDeviceRule());
					}
					set(
						$current,
						"type",
						lv_type_2_0,
						"org.xtext.example.mydsl.Garden.DeviceType");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleDeviceType
entryRuleDeviceType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDeviceTypeRule()); }
	iv_ruleDeviceType=ruleDeviceType
	{ $current=$iv_ruleDeviceType.current; }
	EOF;

// Rule DeviceType
ruleDeviceType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getDeviceTypeAccess().getTemperatureSensorParserRuleCall_0());
		}
		this_TemperatureSensor_0=ruleTemperatureSensor
		{
			$current = $this_TemperatureSensor_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getDeviceTypeAccess().getMoistureSensorParserRuleCall_1());
		}
		this_MoistureSensor_1=ruleMoistureSensor
		{
			$current = $this_MoistureSensor_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getDeviceTypeAccess().getUltrasonicSensorParserRuleCall_2());
		}
		this_UltrasonicSensor_2=ruleUltrasonicSensor
		{
			$current = $this_UltrasonicSensor_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getDeviceTypeAccess().getWaterPumpParserRuleCall_3());
		}
		this_WaterPump_3=ruleWaterPump
		{
			$current = $this_WaterPump_3.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleTemperatureSensor
entryRuleTemperatureSensor returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTemperatureSensorRule()); }
	iv_ruleTemperatureSensor=ruleTemperatureSensor
	{ $current=$iv_ruleTemperatureSensor.current; }
	EOF;

// Rule TemperatureSensor
ruleTemperatureSensor returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0='temperatureSensor'
			{
				newLeafNode(lv_name_0_0, grammarAccess.getTemperatureSensorAccess().getNameTemperatureSensorKeyword_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getTemperatureSensorRule());
				}
				setWithLastConsumed($current, "name", lv_name_0_0, "temperatureSensor");
			}
		)
	)
;

// Entry rule entryRuleMoistureSensor
entryRuleMoistureSensor returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMoistureSensorRule()); }
	iv_ruleMoistureSensor=ruleMoistureSensor
	{ $current=$iv_ruleMoistureSensor.current; }
	EOF;

// Rule MoistureSensor
ruleMoistureSensor returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0='moistureSensor'
				{
					newLeafNode(lv_name_0_0, grammarAccess.getMoistureSensorAccess().getNameMoistureSensorKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMoistureSensorRule());
					}
					setWithLastConsumed($current, "name", lv_name_0_0, "moistureSensor");
				}
			)
		)
		(
			otherlv_1='@'
			{
				newLeafNode(otherlv_1, grammarAccess.getMoistureSensorAccess().getCommercialAtKeyword_1_0());
			}
			(
				(
					lv_threshold_2_0=RULE_INT
					{
						newLeafNode(lv_threshold_2_0, grammarAccess.getMoistureSensorAccess().getThresholdINTTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getMoistureSensorRule());
						}
						setWithLastConsumed(
							$current,
							"threshold",
							lv_threshold_2_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleUltrasonicSensor
entryRuleUltrasonicSensor returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getUltrasonicSensorRule()); }
	iv_ruleUltrasonicSensor=ruleUltrasonicSensor
	{ $current=$iv_ruleUltrasonicSensor.current; }
	EOF;

// Rule UltrasonicSensor
ruleUltrasonicSensor returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0='ultraSonicSensor'
			{
				newLeafNode(lv_name_0_0, grammarAccess.getUltrasonicSensorAccess().getNameUltraSonicSensorKeyword_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getUltrasonicSensorRule());
				}
				setWithLastConsumed($current, "name", lv_name_0_0, "ultraSonicSensor");
			}
		)
	)
;

// Entry rule entryRuleWaterPump
entryRuleWaterPump returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getWaterPumpRule()); }
	iv_ruleWaterPump=ruleWaterPump
	{ $current=$iv_ruleWaterPump.current; }
	EOF;

// Rule WaterPump
ruleWaterPump returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0='waterPump'
			{
				newLeafNode(lv_name_0_0, grammarAccess.getWaterPumpAccess().getNameWaterPumpKeyword_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getWaterPumpRule());
				}
				setWithLastConsumed($current, "name", lv_name_0_0, "waterPump");
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
