import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/deployment/kubectlNamespacedDeploymentResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/namespace/kubectlNamespacedNamespaceResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/service/kubectlNamespacedServiceResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/statefulset/kubectlNamespacedStatefulsetResources.dart';

class KubectlNamespacedResources {
  /// contains the base command for namespaced resources
  static String _baseCommandSpace = "";

  /// nested class for namespace resources
  late KubectlNamespacedNamespaceResources namespace;

  /// nested class for statefulset resources
  late KubectlNamespacedStatefulsetResources statefulset;

  /// nested class for deployment resources
  late KubectlNamespacedDeploymentResources deployment;

  /// nested class for service resources
  late KubectlNamespacedServiceResources service;

  // initialises the class
  KubectlNamespacedResources(String baseCommandSpace) {
    _baseCommandSpace = baseCommandSpace;

    // initialize the namespace resource
    namespace = KubectlNamespacedNamespaceResources(_baseCommandSpace);

    // initialize the statefulset resource
    statefulset = KubectlNamespacedStatefulsetResources(_baseCommandSpace);

    // initialize the deployment resource
    deployment = KubectlNamespacedDeploymentResources(_baseCommandSpace);

    // initialize the service resource
    service = KubectlNamespacedServiceResources(_baseCommandSpace);
  }
}
