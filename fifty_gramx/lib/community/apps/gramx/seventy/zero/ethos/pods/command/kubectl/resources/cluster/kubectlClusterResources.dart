import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/cluster/clusterRole/kubectlClusterClusterRoleResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/cluster/clusterRoleBinding/kubectlClusterClusterRoleBindingResources.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/cluster/persistentVolume/kubectlClusterPersistentVolumeResources.dart';

class KubectlClusterResources {
  /// contains the base command for cluster resources
  static String _baseCommandSpace = "";

  /// nested class for namespace resources
  late KubectlClusterPersistentVolumeResources persistentVolume;

  /// nested class for namespace resources
  late KubectlClusterClusterRoleResources clusterRole;

  /// nested class for namespace resources
  late KubectlClusterClusterRoleBindingResources clusterRoleBinding;

  // initialises the class
  KubectlClusterResources(String baseCommandSpace) {
    _baseCommandSpace = baseCommandSpace;

    // initialize the namespace resource
    persistentVolume =
        KubectlClusterPersistentVolumeResources(_baseCommandSpace);

    // initialize the namespace resource
    clusterRole = KubectlClusterClusterRoleResources(_baseCommandSpace);

    // initialize the namespace resource
    clusterRoleBinding =
        KubectlClusterClusterRoleBindingResources(_baseCommandSpace);
  }
}
