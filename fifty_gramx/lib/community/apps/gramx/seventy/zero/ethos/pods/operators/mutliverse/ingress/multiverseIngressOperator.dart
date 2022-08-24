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
      // await KubectlCommands.apply.namespaced.serviceAccount.multiverseIngressAdmissions();

      // create admissions role
      // await KubectlCommands.apply.namespaced.role.multiverseIngressAdmissions();

      // create admissions role bindings
      // await KubectlCommands.apply.namespaced.roleBinding.multiverseIngressAdmissions();

      // create admissions cluster role
      // await KubectlCommands.apply.cluster.clusterRole.multiverseIngressAdmissions();

      // create admissions cluster role bindings
      // await KubectlCommands.apply.cluster.clusterRoleBinding.multiverseIngressAdmissions();

      // create admissions validate webhook
      // await KubectlCommands.apply.namespaced.configuration.multiverseIngressAdmissionsValidateWebhook();

      // create admissions create job
      // await KubectlCommands.apply.namespaced.job.multiverseIngressAdmissionsCreate();

      // create admissions patch job
      // await KubectlCommands.apply.namespaced.job.multiverseIngressAdmissionsPatch();

      // create controller service account
      // await KubectlCommands.apply.namespaced.serviceAccount.multiverseIngressController();

      // create controller role
      // await KubectlCommands.apply.namespaced.role.multiverseIngressController();

      // create controller role bindings
      // await KubectlCommands.apply.namespaced.roleBinding.multiverseIngressController();

      // create controller cluster role
      // await KubectlCommands.apply.cluster.clusterRole.multiverseIngressController();

      // create controller cluster role bindings
      // await KubectlCommands.apply.cluster.clusterRoleBinding.multiverseIngressController();

      // create controller config map
      // await KubectlCommands.apply.namespaced.configMap.multiverseIngressController();

      // create controller service
      // await KubectlCommands.apply.namespaced.service.multiverseIngressController();

      // create controller admission service
      // await KubectlCommands.apply.namespaced.service.multiverseIngressAdmission();

      // create controller deployment
      // await KubectlCommands.apply.namespaced.deployment.multiverseIngressController();

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
