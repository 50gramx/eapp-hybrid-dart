import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/kubectlCommands.dart';

class MultiverseIngressOperator {
  // operates the file system
  //
  // returns status, 1101 -- pod was stopped, and is running now
  // returns status, 1102 -- pod was running, and is running now
  // returns status, 1103 -- pod was running, and is stopped now
  // returns status, 1104 -- pod was stopped, and is stopped now

  /// stores the status in memory
  static Map<String, dynamic> _multiverseIngress = {
    "controller": {
      "podRunning": false,
    },
  };

  // initialised this class
  MultiverseIngressOperator() {
    // check for pod status
    checkPodStatus();
  }

  bool isUp() {
    // returns true/false for pod running status
    return _multiverseIngress["podRunning"];
  }

  Future<bool> checkPodStatus() async {
    // check the pod status of controller
    _multiverseIngress["podRunning"] = await KubectlCommands
        .get.namespaced.deployment
        .multiverseChainsIdentityStatus();
    return _multiverseIngress["podRunning"];
  }

  // spins up the file system pod, if not running
  // returns status codes
  Future<int> spinUp() async {
    // check if all the containers in the pod is not running
    if (!isUp()) {
      // steps to spin up ingress
      // create admissions service account
      // create admissions role
      // create admissions role bindings
      // create admissions cluster role
      // create admissions cluster role bindings
      // create admissions validate webhook
      // create admissions create job
      // create admissions patch job
      // create controller service account
      // create controller role
      // create controller role bindings
      // create controller cluster role
      // create controller cluster role bindings
      // create controller config map
      // create controller service
      // create controller admission service
      // create controller deployment
      // todo: create ingress resource for services
      await KubectlCommands.apply.namespaced.deployment
          .multiverseChainsIdentity();
      // check the status and return the code
      if (await checkPodStatus()) {
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
    if (isUp()) {
      // pod is running
      // todo: write the code to spin down
      await KubectlCommands.delete.namespaced.deployment
          .deleteMultiverseChainsIdentity();
      await checkPodStatus();
      return 1103;
    } else {
      // pod is not running, do nothing
      return 1104;
    }
  }
}
