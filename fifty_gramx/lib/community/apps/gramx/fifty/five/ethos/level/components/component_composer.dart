import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/NameTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/eic-1004.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/eic-1013.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yaml/yaml.dart';

/// Class which builds the components
///
/// needs no initializer
class ComponentComposer {
  int _getComponentCode({required String componentNameCode}) {
    // get the code for variable
    String typeCodeString = componentNameCode.replaceFirst("EIC", '');
    return int.parse(typeCodeString);
  }

  /// builds and returns the components
  /// based on the contract passed
  ///
  /// accepts component code <int>
  /// accepts component properties as key-value map
  ///
  /// returns the component as Widget
  Widget fromComponentContract(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String componentNameCode,
      required YamlMap componentProperties}) {
    // get the variable type code
    int componentCode = _getComponentCode(componentNameCode: componentNameCode);
    if (kDebugMode) {
      print("Building component with code $componentCode for app: $appName");
    }

    // maps the component code to it's case,
    // returns SizedBox if no mapping found
    switch (componentCode) {
      case 1001:
        if (kDebugMode) {
          print("fromComponentContract - requested 1001");
        }
        return SizedBox();
      // builds TileHeader Widget
      case 1004:
        if (kDebugMode) {
          print("Building TileHeader component for app: $appName");
        }
        return _build1004(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            properties: componentProperties);
      // builds Column Widget
      case 1005:
        if (kDebugMode) {
          print("Building Column component for app: $appName");
        }
        return _build1005(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            properties: componentProperties);
      // builds Primary Button Widget
      case 1006:
        if (kDebugMode) {
          print("Building Primary Button component for app: $appName");
        }
        return _build1006(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            properties: componentProperties);
      // builds Secondary Button Widget
      case 1008:
        if (kDebugMode) {
          print("Building Secondary Button component for app: $appName");
        }
        return _build1008(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            properties: componentProperties);
      // builds NameTextField Widget
      case 1009:
        if (kDebugMode) {
          print("Building NameTextField component for app: $appName");
        }
        return _build1009(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            properties: componentProperties);
      // builds Column Widget
      case 1012:
        if (kDebugMode) {
          print("Building Column component for app: $appName");
        }
        return _build1012(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            properties: componentProperties);
      case 1013:
        if (kDebugMode) {
          print("Building EIC1013 component for app: $appName");
        }
        return _build1013(properties: componentProperties);
      case 1016:
        if (kDebugMode) {
          print("Building EIC1016 component for app: $appName");
        }
        return _build1016(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            properties: componentProperties);
      // default case, returns a SizedBox
      default:
        if (kDebugMode) {
          print("Building default component (SizedBox) for app: $appName");
        }
        return _build1014();
    }
  }

  /// builds a Tile Header Widget
  ///
  /// accepts label String
  ///
  /// returns Widget
  Widget _build1004(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlMap properties}) {
    // get the label from the properties
    String label = properties['label'];

    // return the component
    return EIC1004(
      label: label,
    );
  }

  /// builds a Column Widget
  ///
  /// accepts children-list List<Widget>
  ///
  /// returns Widget
  Widget _build1005(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlMap properties}) {
    // fetch the list of children from component properties
    YamlList childrenComponents = properties['children-components'];

    // to store the mapping of children widgets
    List<Widget> childrenList = [];
    if (kDebugMode) {
      print("Building Column component for app: $appName");
    }
    // loop through the children components
    for (int childIndex = 0;
        childIndex < childrenComponents.length;
        childIndex++) {
      // get the child component name code
      String childNameCode = childrenComponents[childIndex];
      if (kDebugMode) {
        print(
            "Building child component with name code $childNameCode for app: $appName");
      }
      // to store the value of component widget based on composure
      Widget childComponent = _build1014();

      // check whether the child component is a composed component or a composed tile
      if (childNameCode.startsWith("EAIC")) {
        // child is a composed component
        childComponent = EthosAppFlowBob.getGramxAppsInteractionComponentValue(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            componentNameCode: childNameCode);
        if (kDebugMode) {
          print("Child component is a composed component for app: $appName");
        }
      } else {
        // child is a composed tile
        childComponent = EthosAppFlowBob.getGramxAppsInteractionTileValue(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            tileNameCode: childNameCode);
        if (kDebugMode) {
          print("Child component is a composed tile for app: $appName");
        }
      }

      // add the child component to the list
      childrenList.add(childComponent);
    }

    // return the component
    return Column(
      children: childrenList,
    );
  }

  /// builds a Secondary Button Widget
  ///
  /// accepts [label] String
  ///
  /// returns Widget
  Widget _build1006(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlMap properties}) {
    // get the label from properties
    String label = properties['label'];

    // return the component
    return ActionNeuButton(
      buttonTitle: label,
      isPrimaryButton: true,
      buttonActionOnPressed: () {},
    );
  }

  /// builds a Secondary Button Widget
  ///
  /// accepts [label] String
  ///
  /// returns Widget
  Widget _build1008(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlMap properties}) {
    // get the label from properties
    String label = properties['label'];

    // return the component
    return ActionNeuButton(buttonTitle: label, buttonActionOnPressed: () {});
  }

  /// builds a NameTextField Widget
  ///
  /// accepts hint-text <String>
  /// accepts text-controller <TextEditingController>
  ///
  /// returns Widget
  Widget _build1009(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlMap properties}) {
    // get the capability name code to get the text-controller
    String capabilityNameCode = properties['text-controller'];

    // build the text-controller from capability
    dynamic capability = EthosAppFlowBob.getGramxAppsLocalCapabilityValue(
        communityCode: communityCode,
        orgName: orgName,
        appName: appName,
        capabilityNameCode: capabilityNameCode);
    TextEditingController textEditingController = capability()['value'];

    // return the component
    return NameTextField(
        hintText: properties['hint-text'],
        nameTextFieldController: textEditingController);
  }

  /// builds a Row Widget
  ///
  /// accepts children-list List<Widget>
  ///
  /// returns Widget
  Widget _build1012(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlMap properties}) {
    // fetch the list of children from component properties
    YamlList childrenComponents = properties['children-components'];

    // to store the mapping of children widgets
    List<Widget> childrenList = [];

    // loop through the children components
    for (int childIndex = 0;
        childIndex < childrenComponents.length;
        childIndex++) {
      // get the child component name code
      String childNameCode = childrenComponents[childIndex];

      // to store the value of component widget based on composure
      Widget childComponent = _build1014();

      // check whether the child component is a composed component or a composed tile
      if (childNameCode.startsWith("EAIC")) {
        // child is a composed component
        childComponent = EthosAppFlowBob.getGramxAppsInteractionComponentValue(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            componentNameCode: childNameCode);
      } else {
        // child is a composed tile
        childComponent = EthosAppFlowBob.getGramxAppsInteractionTileValue(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            tileNameCode: childNameCode);
      }

      // add the child component to the list
      childrenList.add(childComponent);
    }

    // return the component
    return Row(
      children: childrenList,
    );
  }

  /// builds a SizedBox Widget
  ///
  /// returns Widget
  Widget _build1014() {
    return SizedBox();
  }

  /// builds a DropDown Widget
  ///
  /// returns Widget
  Widget _build1013({required YamlMap properties}) {
    // TODO: implement this
    List<dynamic> listOfEntities = properties['list-of-entities'];
    String entityValueProperty = properties['entity-value-property'];
    Function(dynamic) onSelectEntity = (entity) {};
    return EIC1013(
        listOfEntities: listOfEntities,
        entityValueProperty: entityValueProperty,
        onSelectEntity: onSelectEntity);
  }

  /// builds a EthosCodeNameTextField Widget
  ///
  /// accepts hint-text <String>
  /// accepts text-controller <TextEditingController>
  /// accepts on-function <Function>
  ///
  /// depends on EPMCC2101
  ///
  /// returns Widget
  Widget _build1016(
      {required int communityCode,
      required String orgName,
      required String appName,
      required YamlMap properties}) {
    // get the capability name code to get the text-controller
    String capabilityNameCode = properties['text-controller'];

    // build the text-controller from capability
    dynamic capability = EthosAppFlowBob.getGramxAppsLocalCapabilityValue(
        communityCode: communityCode,
        orgName: orgName,
        appName: appName,
        capabilityNameCode: capabilityNameCode);
    TextEditingController textEditingController = capability()['value'];

    // return the component
    return NameTextField(
        hintText: properties['hint-text'],
        nameTextFieldController: textEditingController);
  }
}
