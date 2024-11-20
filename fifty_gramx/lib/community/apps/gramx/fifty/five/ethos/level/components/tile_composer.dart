import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/variable_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_variable_composer.dart';
import 'package:flutter/material.dart';
import 'package:yaml/yaml.dart';

class TileComposer {
  fromContract(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlList conditions,
      required Widget composedComponent}) {
    bool visible = true;
    // parse all the conditions to one variable
    for (int index = 0; index < conditions.length; index++) {
      YamlMap condition = conditions[index];
      // get the code name
      String nameCode = condition['name-code'];
      if (nameCode.startsWith("EAIV")) {
        // app local variable
        var localVariableValue = VariableManager.instance
            .getGramxAppsLocalVariableValue(
                communityCode: communityCode,
                orgName: orgName,
                appName: appName,
                variableNameCode: nameCode);
        // resolve condition for this variable based on it's type
        String variableTypeCodeName = localVariableValue['type'];
        var resolvedCondition = LocalVariableComposer().resolveConditionFor(
            variableTypeNameCode: variableTypeCodeName,
            condition: condition,
            localVariableValue: localVariableValue);
        visible = visible && resolvedCondition;
      } else {}
      // check the kind of code name

      // EthosAppFlowBob
    }
    return Visibility(visible: visible, child: composedComponent);
  }
}
