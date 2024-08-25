// operates the launch commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'dart:convert';
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:process_run/process_run.dart';

class MultipassLaunchCommands {
  MultipassLaunchCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for launch commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassLaunchCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} launch ";
  }

  /// launches the vm
  ///
  /// needs [int] memoryInGB, [int] cpuCoreCount
  /// and [int] diskSpaceInGB as initializers
  ///
  /// returns the status codes
  Future<bool> vm(int memoryInGB, int cpuCoreCount, int diskSpaceInGB) async {
    // build the command
    String command = "${_baseCommandSpace}"
        "focal "
        "--name ${_vmName} "
        "--memory ${memoryInGB}G "
        "--cpus ${cpuCoreCount} "
        "--disk ${diskSpaceInGB}G";
    print("command: $command");
    // run the command
    if (Platform.isWindows) {
      print("running launch vm on Windows");
      await SimpleCommandExecuter.run("multipass list");
      await SimpleCommandExecuter.run(command);
      return true;
    } else if (Platform.isMacOS || Platform.isLinux) {
      final vmMeta = await MultipassCommands.list.getOrchestratorVmMeta();
      if (vmMeta.isEmpty) {
        String output = (await PrivilegedCommandExecuter.run(command)).outText;
        var status = LineSplitter.split(output).last;
        final String launchMsg1 = "Launched: $_vmName";
        if (status == launchMsg1) {
          return true;
        } else {
          return false;
        }
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}
