import 'package:flutter/material.dart';

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
      {required String variableTypeNameCode,
      required Map<String, dynamic> defaultValues}) {
    // get the variable type code
    int variableTypeCode =
        _getVariableTypeCode(variableTypeNameCode: variableTypeNameCode);

    // maps the variable code to it's case,
    // returns false <boolean> if no mapping found
    switch (variableTypeCode) {
      case 1001: // TextEditingController
        return _build1001(defaultValues: defaultValues);
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
  TextEditingController _build1001(
      {required Map<String, dynamic> defaultValues}) {
    return TextEditingController(text: defaultValues['text'] ?? '');
  }

  dynamic _get1001() {
    return TextEditingController().runtimeType;
  }
}
