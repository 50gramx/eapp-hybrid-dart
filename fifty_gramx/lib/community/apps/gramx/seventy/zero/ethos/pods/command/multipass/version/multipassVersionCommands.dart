// operates the launch commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:process_run/shell.dart';

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

  Future<bool> isInstalledInWindows() async {
    // PowerShell command that checks if Multipass is installed

    var scriptPath =
        await PrivilegedCommandExecuter.getTemporaryFilePathForAssetFile(
            "lib/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/version/powershellIsPresentMultipass.ps1");

    try {
      final result = await SimpleCommandExecuter.file(scriptPath);
      if (result.last.exitCode == 1) {
        return false;
      } else {
        return true;
      }
    } on ShellException catch (e, st) {
      if (e.result!.exitCode == 1) {
        return false;
      } else if (e.result!.exitCode == 0) {
        return true;
      } else {
        return false;
      }
    } catch (e, st) {
      return false;
    }
  }

  Future<bool> installWindows() async {
    if (!await MultipassCommands.version.isPresent()) {
      // PowerShell command that checks if Multipass is installed
      String scriptPath =
          await PrivilegedCommandExecuter.getTemporaryFilePathForAssetFile(
              "lib/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/version/powershellInstallMultipass.ps1");

      try {
        final result = await SimpleCommandExecuter.file(scriptPath);
        if (result.last.exitCode == 1) {
          return false;
        } else {
          return true;
        }
      } on ShellException catch (e, st) {
        if (e.result!.exitCode == 1) {
          return false;
        } else if (e.result!.exitCode == 0) {
          return true;
        } else {
          return false;
        }
      } catch (e, st) {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<bool> uninstallWindows() async {
    if (await MultipassCommands.version.isPresent()) {
      // PowerShell command that checks if Multipass is installed
      String scriptPath =
          await PrivilegedCommandExecuter.getTemporaryFilePathForAssetFile(
              "lib/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/version/powershellUninstallMultipass.ps1");

      try {
        final result = await SimpleCommandExecuter.file(scriptPath);
        if (result.last.exitCode == 1) {
          return false;
        } else {
          return true;
        }
      } on ShellException catch (e, st) {
        if (e.result!.exitCode == 1) {
          return false;
        } else if (e.result!.exitCode == 0) {
          return true;
        } else {
          return false;
        }
      } catch (e, st) {
        return false;
      }
    } else {
      return false;
    }
  }

  /// Checks if the version of multipass is found in the command output.
  ///
  /// Returns true if multipass version is found, otherwise false.
  Future<bool> isPresent() async {
    // build the command

    // this command is effective when the multipass is present, or in linux flavors
    // but in windows, a different approach would be suitable
    // like checking the list of programs whether it is present or not,
    // if not available, we will not proceed for checking
    String command = "${_baseCommandSpace}";
    print("MultipassVersionCommands,isPresent: command: $command");
    // run the command
    if (Platform.isWindows) {
      bool result = await isInstalledInWindows();
      return result;
    } else {
      final results = await SimpleCommandExecuter.run(command);
      print("MultipassVersionCommands,isPresent: results: $results ");

      // Check if the version or specific output is found
      bool versionFound = false;
      String searchTerm = "multipass";

      for (ProcessResult result in results) {
        print(
            "MultipassVersionCommands,isPresent: result of results: $result ");
        if (result.stdout.toString().contains(searchTerm)) {
          versionFound = true;
          break;
        }
      }

      return versionFound;
    }
  }

  /// Retrieves the version of multipass from the command output.
  ///
  /// Returns the version string if found, otherwise returns an empty string.
  Future<String> getVersion() async {
    // Build the command
    String command = "${_baseCommandSpace}";
    print("command: $command");

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
