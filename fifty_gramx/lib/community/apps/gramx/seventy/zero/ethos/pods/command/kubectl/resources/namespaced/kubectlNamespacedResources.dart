import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/namespace/kubectlNamespacedNamespaceResources.dart';

class KubectlNamespacedResources {
  /// contains the base command for namespaced resources
  static String _baseCommandSpace = "";

  /// nested class for namespaced resources
  late KubectlNamespacedNamespaceResources namespace;

  // initialises the class
  KubectlNamespacedResources(String baseCommandSpace) {
    _baseCommandSpace = baseCommandSpace;

    // initialize the namespace resource
    namespace = KubectlNamespacedNamespaceResources(_baseCommandSpace);
  }
}
