 import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/resources/persona/serviceAccount/kubectlPersonaServiceAccountResources.dart';

class KubectlPersonaResources {
  /// contains the base command for persona resources
  static String _baseCommandSpace = "";

  /// nested class for serviceAccount resources
  late KubectlPersonaServiceAccountResources serviceAccount;

  // initialises the class
  KubectlPersonaResources(String baseCommandSpace) {
    _baseCommandSpace = baseCommandSpace;

    // initialize the serviceAccount resource
    serviceAccount = KubectlPersonaServiceAccountResources(_baseCommandSpace);
  }
}
