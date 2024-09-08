// operates the launch commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:flutter/foundation.dart';

class MultipassDeleteCommands {
  MultipassDeleteCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for delete commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassDeleteCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} delete ";
  }

  /// deletes the vm
  ///
  ///
  /// returns the status codes
  vm() async {
    await MultipassCommands.stop.orchestrator();
    // build the command
    String command = "${_baseCommandSpace}"
        "-p ${_vmName}";
    if (kDebugMode) {
      print("command: $command");
    }
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }
}
