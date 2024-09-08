// operates the launch commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:flutter/foundation.dart';

class MultipassVersionCommands {
  MultipassVersionCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for delete commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassVersionCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath} version";
  }

  /// Checks if the version of multipass is found in the command output.
  ///
  /// Returns true if multipass version is found, otherwise false.
  Future<bool> isPresent() async {
    // build the command
    String command = "${_baseCommandSpace}";
    if (kDebugMode) {
      print("command: $command");
    }
    // run the command
    final results = await SimpleCommandExecuter.run(command);

    // Check if the version or specific output is found
    bool versionFound = false;
    String searchTerm = "multipass";

    for (ProcessResult result in results) {
      if (result.stdout.toString().contains(searchTerm)) {
        versionFound = true;
        break;
      }
    }

    return versionFound;
  }

  /// Retrieves the version of multipass from the command output.
  ///
  /// Returns the version string if found, otherwise returns an empty string.
  Future<String> getVersion() async {
    // Build the command
    String command = "${_baseCommandSpace}";
    if (kDebugMode) {
      print("command: $command");
    }
    // Run the command and get the results
    List<ProcessResult> results = await SimpleCommandExecuter.run(command);

    // Regular expression to find multipass version
    RegExp multipassRegex = RegExp(r'^multipass\s+(\S+)', multiLine: true);

    // Extract the version if found
    for (ProcessResult result in results) {
      String output = result.stdout.toString();
      if (multipassRegex.hasMatch(output)) {
        return multipassRegex.firstMatch(output)!.group(1)!;
      }
    }

    return ""; // Return empty string if version not found
  }
}
