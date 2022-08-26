import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/configMap/kubectlNamespacedConfigMapResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/configuration/kubectlNamespacedConfigurationResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/deployment/kubectlNamespacedDeploymentResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/ingress/kubectlNamespacedIngressResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/job/kubectlNamespacedJobResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/namespace/kubectlNamespacedNamespaceResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/role/kubectlNamespacedRoleResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/namespaced/roleBinding/kubectlNamespacedRoleBindingResources.dart';
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

  /// nested class for role resources
  late KubectlNamespacedRoleResources role;

  /// nested class for role binding resources
  late KubectlNamespacedRoleBindingResources roleBinding;

  /// nested class for configuration resources
  late KubectlNamespacedConfigurationResources configuration;

  /// nested class for job resources
  late KubectlNamespacedJobResources job;

  /// nested class for job resources
  late KubectlNamespacedConfigMapResources configMap;

  /// nested class for ingress resources
  late KubectlNamespacedIngressResources ingress;

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

    // initialize the role resource
    role = KubectlNamespacedRoleResources(_baseCommandSpace);

    // initialize the role binding resource
    roleBinding = KubectlNamespacedRoleBindingResources(_baseCommandSpace);

    // initialize the configuration resource
    configuration = KubectlNamespacedConfigurationResources(_baseCommandSpace);

    // initialize the job resource
    job = KubectlNamespacedJobResources(_baseCommandSpace);

    // initialize the configmap resource
    configMap = KubectlNamespacedConfigMapResources(_baseCommandSpace);

    // initialize the ingress resource
    ingress = KubectlNamespacedIngressResources(_baseCommandSpace);
  }
}
