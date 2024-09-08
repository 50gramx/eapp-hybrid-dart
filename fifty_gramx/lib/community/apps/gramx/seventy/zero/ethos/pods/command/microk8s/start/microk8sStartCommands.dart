// operates the status commands for microk8s package
import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:flutter/foundation.dart';
import 'package:process_run/shell.dart';

class Microk8sStartCommands {
  // singleton definition
  Microk8sStartCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for status commands
  static String _baseCommandSpace = "";

  // initialises the class
  Microk8sStartCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath}start ";
  }

  Future<bool> now() async {
    String command = "$_baseCommandSpace";
    if (kDebugMode) {
      print("microk8s starting now");
    }
    String output = (await SimpleCommandExecuter.run(command)).outText;
    var firstLineOP = LineSplitter.split(output).first;
    if (firstLineOP == "Started.") {
      return true;
    } else {
      return false;
    }
  }
}
