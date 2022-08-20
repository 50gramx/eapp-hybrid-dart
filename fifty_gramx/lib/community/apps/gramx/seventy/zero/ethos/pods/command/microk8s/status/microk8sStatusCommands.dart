// operates the status commands for microk8s package
import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
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
    // process based on vm state
    switch (orchestratorState) {
      case "RUNNING":
        // check microk8s status
        {
          // build the command
          String command = "$_baseCommandSpace"
              "--format=short";
          // run the command
          String output = (await SimpleCommandExecuter.run(command)).outText;
          // parse the first line
          var status = LineSplitter.split(output).first;
          // process the output based on the status
          if (output ==
              "MicroK8s is not running. Please run `microk8s start`.") {
            return "$orchestratorState, STOPPED";
          } else if (output == "microk8s is running") {
            return "$orchestratorState, RUNNING";
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
}
