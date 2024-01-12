import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/kubectlCommands.dart';

class MultiverseFileSystemOperator {
  // operates the file system
  //
  // returns status, 1101 -- pod was stopped, and is running now
  // returns status, 1102 -- pod was running, and is running now
  // returns status, 1103 -- pod was running, and is stopped now
  // returns status, 1104 -- pod was stopped, and is stopped now

  /// stores the status in memory
  static Map<String, dynamic> _multiverseFileSystem = {
    "podRunning": false,
    "serviceUp": false,
  };

  // initialised this class
  MultiverseFileSystemOperator() {
    // check for pod status
    checkPodStatus();
  }

  bool isUp() {
    // returns true/false for pod running status
    return _multiverseFileSystem["podRunning"];
  }

  Future<bool> checkPodStatus() async {
    if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
      _multiverseFileSystem["podRunning"] = await KubectlCommands
        .get.namespaced.deployment
        .multiverseFileSystemStatus();
    // TODO: check service status
    }
    return _multiverseFileSystem["podRunning"];
  }

  // spins up the file system pod, if not running
  // returns status codes
  Future<int> spinUp() async {
    // check if pod is not running
    if (this.isUp() == false) {
      // pod is not running
      // todo: update with the spin up with sticky-pod
      // await KubectlCommands.apply.cluster.persistentVolume
      //     .multiverseFileSystem();
      // await KubectlCommands.apply.namespaced.statefulset.multiverseFileSystem();
      // warn: temporarily spinning up with non-sticky-pod
      await KubectlCommands.apply.namespaced.deployment.multiverseFileSystem();
      await KubectlCommands.apply.namespaced.service.multiverseFileSystem();
      // TODO: check if pod is running
      await checkPodStatus();
      return 1101;
    } else {
      // pod is running, do nothing
      return 1102;
    }
  }

  // spins down the file system pod, if running
  // returns status codes
  Future<int> spinDown() async {
    // check if pod is running
    if (isUp()) {
      await KubectlCommands.delete.namespaced.deployment
          .deleteMultiverseFileSystem();
      await KubectlCommands.delete.namespaced.service
          .deleteMultiverseFileSystem();
      await checkPodStatus();
      return 1103;
    } else {
      // pod is not running, do nothing
      return 1104;
    }
  }
}
