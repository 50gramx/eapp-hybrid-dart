// operates the delete commands for kubectl package

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/cluster/kubectlClusterResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/kubectlNamespacedResources.dart';

class KubectlDeleteCommands {
  KubectlDeleteCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for delete commands
  static String _baseCommandSpace = "";

  /// nested class for namespaced resources
  KubectlNamespacedResources get namespaced =>
      KubectlNamespacedResources(_baseCommandSpace);

  /// nested class for cluster resources
  KubectlClusterResources get cluster =>
      KubectlClusterResources(_baseCommandSpace);

  // initialises the class
  KubectlDeleteCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath}delete ";
  }
}
