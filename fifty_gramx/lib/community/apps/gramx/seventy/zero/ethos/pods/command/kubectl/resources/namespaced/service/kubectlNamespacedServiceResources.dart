import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';

class KubectlNamespacedServiceResources {
  /// contains the base command for resource management commands
  static String _baseCommandSpace = "";

  /// contains the multiverse base command for resource management commands
  static String _multiverseBaseCommandSpace = "";

  /// contains the multiverse base command for resource management commands
  static String _multiverseServiceBCS = "";

  // initialises the class
  KubectlNamespacedServiceResources(String baseCommandSpace) {
    print(
        "KubectlNamespacedServiceResources:baseCommandSpace: $baseCommandSpace");
    // initialisation of base command
    _baseCommandSpace = baseCommandSpace;

    // initialisation of namespace command for multiverse
    _multiverseBaseCommandSpace = "$_baseCommandSpace --namespace ethosverse";

    // initialisation of namespace command for multiverse
    // specific to deployment commands
    _multiverseServiceBCS = "$_multiverseBaseCommandSpace service -o yaml";
  }

  /// creates the resource for "multiverse-file-system"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl apply commands
  Future<bool> multiverseFileSystem() async {
    String tempBaseCommandSpace = _baseCommandSpace;
    // fetch the temporary path for configuration file from the assets
    String assetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/multiverse/resources/namespaced/multiverse-filesystem-service.yaml";
    // transfer the asset to vm
    String vmAssetPath = await MultipassCommands.transfer.asset(assetPath);
    // build the command
    String command = "$tempBaseCommandSpace -f $vmAssetPath";
    // run the command
    await SimpleCommandExecuter.run(command);
    // remove the asset from vm
    await MultipassCommands.exec.removeAsset(vmAssetPath);
    return true;
  }

  /// deletes the resource for "multiverse-file-system"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl delete commands
  Future<bool> deleteMultiverseFileSystem() async {
    String multiverseBaseCommandSpace = _multiverseBaseCommandSpace;
    print("deleteMultiverseFileSystem");
    // build the command
    String command = "$multiverseBaseCommandSpace service identity-chains";
    // run the command
    await SimpleCommandExecuter.run(command);
    return true;
  }
}
