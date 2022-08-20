// operates the list commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'dart:convert';
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:process_run/shell.dart';

class MultipassListCommands {
  MultipassListCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for launch commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassListCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "$_packagePath list ";
  }

  /// lists the virtual machines
  ///
  /// returns the json formatted list as a Map<String, dynamic>
  Future<Map<String, dynamic>> vmsInJson() async {
    // build the command
    String command = "$_baseCommandSpace"
        "--format=json";
    // run the command
    List<ProcessResult> outputData =
        await PrivilegedCommandExecuter.run(command);
    return json.decode(outputData.outText);
  }

  /// checks the orchestrator in list of vms
  ///
  /// returns Map<String, dynamic> if orchestrator vm is available, else empty
  Future<Map<String, dynamic>> getOrchestratorVmMeta() async {
    // get the list of vms in json
    List<dynamic> vmsInJsonList = (await vmsInJson())["list"];
    // loop through the list of vms
    for (int vmIndex = 0; vmIndex < vmsInJsonList.length; vmIndex++) {
      // check for the orchestrator vm name in this list
      if (vmsInJsonList[vmIndex]["name"] == _vmName) {
        // orchestrator vm is available in this index
        return vmsInJsonList[vmIndex];
      }
    }
    // no vm with orchestrator name in the list, return empty map
    return {};
  }

  /// gets the orchestrator vm state
  ///
  /// returns the orchestrator state as a string
  /// with one of the following values
  ///
  /// RUNNING
  /// STOPPED
  /// SUSPENDED
  /// UNAVAILABLE
  Future<String> getOrchestratorVmState() async {
    // get orchestrator meta
    Map<String, dynamic> orchestratorVmMeta = await getOrchestratorVmMeta();
    // return its state
    if (orchestratorVmMeta.isNotEmpty) {
      return orchestratorVmMeta["state"].toString().toUpperCase();
    } else {
      // empty map, reflects no vm with orchestrator name
      return "UNAVAILABLE";
    }
  }
}
