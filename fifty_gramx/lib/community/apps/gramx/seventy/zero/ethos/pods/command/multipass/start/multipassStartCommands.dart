// operates the start commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:flutter/foundation.dart';

class MultipassStartCommands {
  MultipassStartCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for launch commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassStartCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} start ";
  }

  /// starts the orchestrator
  ///
  /// returns the status codes
  orchestrator() async {
    if (kDebugMode) {
      print("starting orchestrator");
    }
    // build the command
    String command = "${_baseCommandSpace}"
        "${_vmName}";
    // run the command
    await PrivilegedCommandExecuter.run(command);
    if (kDebugMode) {
      print("started orchestrator");
    }
  }
}
