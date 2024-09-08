// operates the status commands for microk8s package
import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:flutter/foundation.dart';
import 'package:process_run/shell.dart';

class Microk8sStatusCommands {
  // singleton definition
  Microk8sStatusCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for status commands
  static String _baseCommandSpace = "";

  // initialises the class
  Microk8sStatusCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath}status ";
  }

  /// checks if the vm is running, if so then checks the microk8s status
  ///
  /// returns the vm state and microk8s status in following fashion as a string
  ///
  /// RUNNING, STOPPED - If the vm is running and microk8s is stopped
  /// RUNNING, RUNNING - If the vm is running and microk8s is running
  /// RUNNING, INACTIVE - If the vm is running and microk8s is inactive
  /// STOPPED, UNAVAILABLE - If the vm is stopped, microk8s is unavailable
  /// SUSPENDED, UNAVAILABLE - If the vm is suspended, microk8s is unavailable
  /// UNAVAILABLE, UNAVAILABLE - If the vm is unavailable, microk8s
  ///   is unavailable
  Future<String> orchestratorStatus() async {
    // get the orchestrator vm state
    String orchestratorState =
        await MultipassCommands.list.getOrchestratorVmState();
    if (kDebugMode) {
      print("orchestratorState: $orchestratorState");
    }
    // process based on vm state
    switch (orchestratorState) {
      case "RUNNING":
        // check microk8s status
        {
          // build the command
          String command = "$_baseCommandSpace"
              "--format=short";
          if (kDebugMode) {
            print("microk8s RUNNING, will check status now");
          }
          // run the command
          String output = (await SimpleCommandExecuter.run(command)).outText;
          // parse the first line
          var status = LineSplitter.split(output).first;
          if (kDebugMode) {
            print("microk8s status: $status");
          }
          // process the output based on the status
          String stoppedMsg1 =
              "MicroK8s is not running. Please run `microk8s start`.";
          String stoppedMsg2 = "microk8s is not running, try microk8s start";
          String runningMsg1 = "microk8s is running";
          String inactiveMsg1 =
              "microk8s is not running. Use microk8s inspect for a deeper inspection.";
          if (status == stoppedMsg1 || status == stoppedMsg2) {
            return "$orchestratorState, STOPPED";
          } else if (status == runningMsg1) {
            return "$orchestratorState, RUNNING";
          } else if (status == inactiveMsg1) {
            return "$orchestratorState, INACTIVE";
          } else {
            return "$orchestratorState, INACTIVE";
          }
        }
      default:
        // return the orchestrator state directly
        {
          return "$orchestratorState, UNAVAILABLE";
        }
    }
  }

  Future<bool> isOrchestratorRunning() async {
    // get the orchestrator status
    String status = await orchestratorStatus();
    // return ture if RUNNING, RUNNING
    if (status == "RUNNING, RUNNING") {
      return true;
    } else {
      // return false if anything else
      return false;
    }
  }
}
