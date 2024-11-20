import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/variable_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_variable_composer.dart';
import 'package:yaml/yaml.dart';

class LocalCapabilityComposer {
  Function fromContract(
      {required int communityCode,
      required String appName,
      required String orgName,
      required YamlList expects,
      required YamlMap returns,
      required YamlList steps}) {
    // fetch the return information
    String returnTypeNameCode = returns['type'];

    // pre-process the return information
    dynamic returnType = LocalVariableComposer()
        .getType(variableTypeNameCode: returnTypeNameCode);

    // post-process holders
    dynamic returnValue = true;

    // pre-process the steps information
    for (int stepsIndex = 0; stepsIndex < steps.length; stepsIndex++) {
      // fetch the step contract
      YamlMap step = steps[stepsIndex];
      // check if contains return
      if (step.containsKey('return')) {
        String returnValueNameCode = step['return'];
        returnValue = VariableManager.instance.getGramxAppsLocalVariableValue(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            variableNameCode: returnValueNameCode);
        continue;
      }
    }

    // compose the function
    Function composedFunction = () {
      return returnValue;
    };

    // return the function
    return composedFunction;
  }
}
