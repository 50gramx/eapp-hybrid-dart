// operates the status commands for microk8s package
import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:process_run/shell.dart';

class Microk8sStopCommands {
  // singleton definition
  Microk8sStopCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for status commands
  static String _baseCommandSpace = "";

  // initialises the class
  Microk8sStopCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath}stop ";
  }

  Future<bool> now() async {
    String command = "$_baseCommandSpace";
    print("microk8s stopping now");
    String output = (await SimpleCommandExecuter.run(command)).outText;
    var firstLineOP = LineSplitter.split(output).last;
    if (firstLineOP == "Stopped.") {
      return true;
    } else {
      return false;
    }
  }
}
