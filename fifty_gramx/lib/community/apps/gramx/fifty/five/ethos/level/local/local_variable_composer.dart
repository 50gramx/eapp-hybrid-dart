import 'package:flutter/material.dart';
import 'package:yaml/yaml.dart';

class LocalVariableComposer {
  int _getVariableTypeCode({required String variableTypeNameCode}) {
    // get the code for variable
    String typeCodeString = variableTypeNameCode.replaceFirst("ELVT", '');
    return int.parse(typeCodeString);
  }

  /// builds and returns the variables
  /// based on the contract passed
  ///
  /// accepts variable type code <int>
  /// accepts variable default values as key-value map
  ///
  /// returns the component as Widget
  dynamic fromVariableContract(
      {required String variableTypeNameCode, required YamlMap defaultValues}) {
    // get the variable type code
    int variableTypeCode =
        _getVariableTypeCode(variableTypeNameCode: variableTypeNameCode);

    // maps the variable code to it's case,
    // returns false <boolean> if no mapping found
    switch (variableTypeCode) {
      case 1001: // TextEditingController
        return _build1001(defaultValues: defaultValues);
      case 1002: // Boolean
        return _build1002(defaultValues: defaultValues);
      case 1003: // Enumeration
        return _build1003(defaultValues: defaultValues);
      default: // default case, returns a SizedBox
        return false;
    }
  }

  bool resolveConditionFor(
      {required String variableTypeNameCode,
      required YamlMap condition,
      required dynamic localVariableValue}) {
    // get the variable type code
    int variableTypeCode =
        _getVariableTypeCode(variableTypeNameCode: variableTypeNameCode);

    // maps the variable code to it's case,
    // returns false <boolean> if no mapping found
    switch (variableTypeCode) {
      case 1002: // TextEditingController
        return _resolve1002(
            condition: condition, localVariableValue: localVariableValue);
      default: // default case, returns a SizedBox
        return false;
    }
  }

  dynamic getType({required String variableTypeNameCode}) {
    // get the variable type code
    int variableTypeCode =
        _getVariableTypeCode(variableTypeNameCode: variableTypeNameCode);

    // maps the variable code to it's case,
    // returns false <boolean> if no mapping found
    switch (variableTypeCode) {
      case 1001:
        return TextEditingController().runtimeType;
    }
  }

  /// builds a TextEditingController
  ///
  /// accepts default values as key-value <Map>
  ///
  /// returns Widget
  TextEditingController _build1001({required YamlMap defaultValues}) {
    return TextEditingController(text: defaultValues['text'] ?? '');
  }

  dynamic _get1001() {
    return TextEditingController().runtimeType;
  }

  bool _build1002({required YamlMap defaultValues}) {
    return defaultValues['value'] ?? false;
  }

  bool _resolve1002(
      {required YamlMap condition, required dynamic localVariableValue}) {
    bool conditionValue = condition['value'];
    bool VariableValue = localVariableValue['value'];
    return conditionValue == VariableValue;
  }

  _build1003({required YamlMap defaultValues}) {
    return EIV1001.unidentified;
  }
}

enum EIV1001 { unidentified, web, desktop, mobile }
