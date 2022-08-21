// operates the get commands for kubectl package

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/kubectlNamespacedResources.dart';

class KubectlGetCommands {
  KubectlGetCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for get commands
  static String _baseCommandSpace = "";

  /// nested class for namespaced resources
  KubectlNamespacedResources get namespaced =>
      KubectlNamespacedResources(_baseCommandSpace);

  // initialises the class
  KubectlGetCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath}get ";
  }
}
