import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/kubectlCommands.dart';
import 'package:flutter/foundation.dart';

class MultiverseChainsOperator {
  // operates the file system
  //
  // returns status, 1101 -- pod was stopped, and is running now
  // returns status, 1102 -- pod was running, and is running now
  // returns status, 1103 -- pod was running, and is stopped now
  // returns status, 1104 -- pod was stopped, and is stopped now

  /// stores the status in memory
  static Map<String, dynamic> _multiverseChains = {
    "universe": {
      "identity": {
        "podRunning": false,
      }
    },
    "community_collaborator": {
      "identity": {
        "podRunning": false,
      }
    }
  };

  // initialised this class
  MultiverseChainsOperator() {
    // check for pod status
    checkPodStatus(entity: "universe", chain: "identity");
    checkPodStatus(entity: "community_collaborator", chain: "identity");
  }

  bool isUp(String entity, String chain) {
    // returns true/false for pod running status
    return _multiverseChains[entity][chain]["podRunning"];
  }

  Future<bool> checkPodStatus(
      {String entity = "", String chain = "", bool allChains = false}) async {
    if (allChains) {
      return (await checkPodStatus(entity: "universe", chain: "identity")) &&
          (await checkPodStatus(
              entity: "community_collaborator", chain: "identity"));
    } else {
      _multiverseChains[entity][chain]["podRunning"] = await KubectlCommands
          .get.namespaced.deployment
          .multiverseChainsIdentityStatus();
      if (kDebugMode) {
        print("_multiverseChains: $_multiverseChains");
        print(
            "checkPodStatus: ${_multiverseChains[entity][chain]["podRunning"]}");
      }
      return _multiverseChains[entity][chain]["podRunning"];
    }
  }

  // spins up the file system pod, if not running
  // returns status codes
  Future<int> spinUp() async {
    // check if all the containers in the pod is not running
    if (!isUp("universe", "identity") ||
        !isUp("community_collaborator", "identity")) {
      // some or all of containers in the pod are not running
      if (kDebugMode) {
        print("calling multiverseChainsIdentity");
      }
      await KubectlCommands.apply.namespaced.deployment
          .multiverseChainsIdentity();
      await KubectlCommands.apply.namespaced.service.multiverseChainsIdentity();
      if (await checkPodStatus(entity: "universe", chain: "identity") ||
          await checkPodStatus(
              entity: "community_collaborator", chain: "identity")) {
        return 1101;
      } else {
        return 1102;
      }
    } else {
      // pod is running, do nothing
      return 1102;
    }
  }

  // spins down the file system pod, if running
  // returns status codes
  Future<int> spinDown() async {
    // check if pod is running
    if (isUp("universe", "identity") ||
        isUp("community_collaborator", "identity")) {
      // pod is running
      // todo: write the code to spin down
      await KubectlCommands.delete.namespaced.deployment
          .deleteMultiverseChainsIdentity();
      await KubectlCommands.delete.namespaced.service
          .deleteMultiverseChainsIdentity();
      await checkPodStatus();
      return 1103;
    } else {
      // pod is not running, do nothing
      return 1104;
    }
  }
}
