import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_variable_composer.dart';
import 'package:yaml/yaml.dart';

class LocalCapabilityComposer {
  Function fromContract(
      {required YamlList expects,
      required YamlMap returns,
      required YamlList steps}) {
    // fetch the return information
    String returnTypeNameCode = returns['type'];

    // pre-process the return information
    dynamic returnType = LocalVariableComposer()
        .getType(variableTypeNameCode: returnTypeNameCode);

    // pre-process the steps information
    for (int stepsIndex = 0; stepsIndex < steps.length; stepsIndex++) {
      // todo: do this
    }

    // compose the function
    Function composedFunction = () {
      return true;
    };

    // return the function
    return composedFunction;
  }
}
