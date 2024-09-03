// operates the launch commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'dart:convert';
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/MachineConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:process_run/shell.dart';

class MultipassInfoCommands {
  MultipassInfoCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for delete commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassInfoCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} info ";
  }

  /// lists the virtual machines info
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
    Map<String, dynamic> vmInfoJsonMap = (await vmsInJson())["info"];
    if (vmInfoJsonMap.containsKey(_vmName)) {
      return Map<String, dynamic>.from(vmInfoJsonMap[_vmName]);
    }

    // no vm with orchestrator name in the list, return empty map
    return {};
  }

  /// gets the orchestrator vm IPv4 (locally reachable)
  ///
  /// returns a list of IPs in string format if found, else empty
  Future<List<String>> getOrchestratorVmIPv4() async {
    List<String> vmIPv4List = [];
    // get orchestrator meta
    Map<String, dynamic> orchestratorVmMeta = await getOrchestratorVmMeta();
    // return its state
    if (orchestratorVmMeta.isNotEmpty) {
      List<String> ipList = List<String>.from(orchestratorVmMeta["ipv4"]);
      return ipList;
    } else {
      // empty map, reflects no vm with orchestrator name
      return vmIPv4List;
    }
  }

  /// gets the orchestrator vm CPU Count
  ///
  /// returns a String of CPU Count in string format if found, else empty
  Future<String> getOrchestratorVmCPU() async {
    // get orchestrator meta
    Map<String, dynamic> orchestratorVmMeta = await getOrchestratorVmMeta();
    // return its state
    if (orchestratorVmMeta.isNotEmpty) {
      String cpuCount = orchestratorVmMeta["cpu_count"];
      return cpuCount;
    } else {
      // empty map, reflects no vm with orchestrator name
      return "";
    }
  }

  /// gets the orchestrator vm CPU Memory
  ///
  /// returns a String of Memory in string format if found, else empty
  Future<String> getOrchestratorVmMemory() async {
    // get orchestrator meta
    Map<String, dynamic> orchestratorVmMeta = await getOrchestratorVmMeta();
    // return its state
    if (orchestratorVmMeta.isNotEmpty) {
      Map<String, dynamic> memoryDetails = orchestratorVmMeta["memory"];
      int totalMemory = memoryDetails["total"]!;
      int usedMemory = memoryDetails["used"]!;
      String memory =
          "${formatBytes(usedMemory, 2)} of ${formatBytes(totalMemory, 2)}";
      return memory;
    } else {
      // empty map, reflects no vm with orchestrator name
      return "";
    }
  }

  /// gets the orchestrator vm Storage
  ///
  /// returns a String of Storage in string format if found, else empty
  Future<String> getOrchestratorVmStorage() async {
    // get orchestrator meta
    Map<String, dynamic> orchestratorVmMeta = await getOrchestratorVmMeta();
    // return its state
    if (orchestratorVmMeta.isNotEmpty) {
      Map<String, dynamic> diskDetails = orchestratorVmMeta["disks"];
      Map<String, dynamic> storageDetails = diskDetails["sda1"];
      int totalStorage = int.parse(storageDetails["total"]!);
      int usedStorage = int.parse(storageDetails["used"]!);
      String storage =
          "${formatBytes(usedStorage, 2)} of ${formatBytes(totalStorage, 2)}";
      return storage;
    } else {
      // empty map, reflects no vm with orchestrator name
      return "";
    }
  }

  /// gets the orchestrator vm Release
  ///
  /// returns a String of Release in string format if found, else empty
  Future<String> getOrchestratorVmRelease() async {
    // get orchestrator meta
    Map<String, dynamic> orchestratorVmMeta = await getOrchestratorVmMeta();
    // return its state
    if (orchestratorVmMeta.isNotEmpty) {
      String releaseDetails = orchestratorVmMeta["release"];
      return releaseDetails;
    } else {
      // empty map, reflects no vm with orchestrator name
      return "";
    }
  }
}
