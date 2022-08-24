import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/cluster/persistentVolume/kubectlClusterPersistentVolumeResources.dart';

class KubectlClusterResources {
  /// contains the base command for cluster resources
  static String _baseCommandSpace = "";

  /// nested class for namespace resources
  late KubectlClusterPersistentVolumeResources persistentVolume;

  // initialises the class
  KubectlClusterResources(String baseCommandSpace) {
    _baseCommandSpace = baseCommandSpace;

    // initialize the namespace resource
    persistentVolume =
        KubectlClusterPersistentVolumeResources(_baseCommandSpace);
  }
}
