// operates the apply commands for kubectl package

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/cluster/kubectlClusterResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/kubectlNamespacedResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/persona/kubectlPersonaResources.dart';

class KubectlApplyCommands {
  KubectlApplyCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for get commands
  static String _baseCommandSpace = "";

  /// nested class for namespaced resources
  KubectlNamespacedResources get namespaced =>
      KubectlNamespacedResources(_baseCommandSpace);

  /// nested class for cluster resources
  KubectlClusterResources get cluster =>
      KubectlClusterResources(_baseCommandSpace);

  /// nested class for persona resources
  KubectlPersonaResources get persona =>
      KubectlPersonaResources(_baseCommandSpace);

  // initialises the class
  KubectlApplyCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath}apply ";
  }
}
