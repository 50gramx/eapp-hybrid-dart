// operates the commands for multipass package
//
// needs [String] package path with space

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/kubectlCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/status/microk8sStatusCommands.dart';

class Microk8sCommands {
  Microk8sCommands._();

  /// contains the package name as per the base os
  static String _packageName = "";

  /// contains the package path as per the base os
  static String _packagePath = "";

  /// nested class for exec commands
  static late KubectlCommands kubectl;

  /// nested class for status commands
  static late Microk8sStatusCommands status;

  Microk8sCommands(String packagePath) {
    // package name is same in all base os, so no checks needed
    _packageName = "microk8s";

    // package path is same in all base os, so no checks needed
    _packagePath = "${packagePath}${_packageName} ";

    // instantiate the kubectl commands
    kubectl = KubectlCommands(_packagePath);

    // instantiate the status commands
    status = Microk8sStatusCommands(_packagePath);
  }
}

/**
 * microk8s add-node
    microk8s addons
    microk8s config
    microk8s ctr
    microk8s dashboard-proxy
    microk8s dbctl
    microk8s disable
    microk8s enable
    microk8s images
    microk8s inspect
    microk8s join
    microk8s leave
    microk8s refresh-certs
    microk8s remove-node
    microk8s reset
    microk8s start
    microk8s stop
    microk8s version
 */
