// operates the create commands for kubectl package

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';

class KubectlCreateCommands {
  KubectlCreateCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for create commands
  static String _baseCommandSpace = "";

  // initialises the class
  KubectlCreateCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath}create ";
  }

  /// creates the resource from configuration file
  ///
  /// needs [String] configuration file path
  resource(String configurationFile) async {
    // build the command
    String command = "$_baseCommandSpace -f $configurationFile";
    // run the command
    await SimpleCommandExecuter.run(command);
  }
}
