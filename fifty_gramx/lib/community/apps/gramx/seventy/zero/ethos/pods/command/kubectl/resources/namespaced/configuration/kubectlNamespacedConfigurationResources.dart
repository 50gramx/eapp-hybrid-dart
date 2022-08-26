import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';

class KubectlNamespacedConfigurationResources {
  /// contains the base command for resource management commands
  static String _baseCommandSpace = "";

  // initialises the class
  KubectlNamespacedConfigurationResources(String baseCommandSpace) {
    _baseCommandSpace = baseCommandSpace;
  }

  /// creates the resource for "multiverse-ingress-admission"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl apply commands
  Future<bool> multiverseIngressAdmissionValidateWebhook() async {
    // fetch the temporary path for configuration file from the assets
    String assetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/multiverse/resources/namespaced/ingress-nginx-admission-validating-webhook.yaml";
    // transfer the asset to vm
    String vmAssetPath = await MultipassCommands.transfer.asset(assetPath);
    // build the command
    String command = "$_baseCommandSpace -f $vmAssetPath";
    // run the command
    await SimpleCommandExecuter.run(command);
    // remove the asset from vm
    await MultipassCommands.exec.removeAsset(vmAssetPath);
    return true;
  }
}
