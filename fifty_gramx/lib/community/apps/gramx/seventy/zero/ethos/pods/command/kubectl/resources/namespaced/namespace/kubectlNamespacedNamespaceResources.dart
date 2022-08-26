import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:process_run/shell.dart';

class KubectlNamespacedNamespaceResources {
  /// contains the base command for get commands
  static String _baseCommandSpace = "";

  // initialises the class
  KubectlNamespacedNamespaceResources(String baseCommandSpace) {
    _baseCommandSpace = baseCommandSpace;
  }

  /// returns true if the ethosverse namespace exists in the cluster, else false
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl get commands
  Future<bool> isEthosverseExists() async {
    List<String> listOfAllNamespaces = await listAllNamespaces();
    for (int listIndex = 0;
        listIndex < listOfAllNamespaces.length;
        listIndex++) {
      if (listOfAllNamespaces[listIndex] == "ethosverse") {
        return true;
      }
    }
    return false;
  }

  /// returns true if the mutliverse-ingress namespace exists in the cluster,
  /// else false
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl get commands
  Future<bool> isMultiverseIngressExists() async {
    List<String> listOfAllNamespaces = await listAllNamespaces();
    for (int listIndex = 0;
        listIndex < listOfAllNamespaces.length;
        listIndex++) {
      if (listOfAllNamespaces[listIndex] == "ingress-nginx") {
        return true;
      }
    }
    return false;
  }

  /// returns the list of all namespaces names in the cluster
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl get commands
  Future<List<String>> listAllNamespaces() async {
    // build the command
    String command = "${_baseCommandSpace}namespaces -o json";
    // run the command
    String output = (await SimpleCommandExecuter.run(command)).outText;
    // decode string to json format
    Map<String, dynamic> jsonOutput = json.decode(output);
    // list to store the fetched namespaces names
    List<String> listOfAllNamespace = [];
    // loop through "items" to fetch the names of namespaces
    List<dynamic> itemsList = jsonOutput["items"];
    for (int itemIndex = 0; itemIndex < itemsList.length; itemIndex++) {
      // fetch the name from the item
      String namespaceName = itemsList[itemIndex]["metadata"]["name"];
      // add the namespace name to the list
      listOfAllNamespace.add(namespaceName);
    }
    // return the list
    return listOfAllNamespace;
  }

  /// creates the resource for "ethosverse"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl apply commands
  Future<bool> ethosverse() async {
    // fetch the temporary path for configuration file from the assets
    String assetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/multiverse/resources/cluster/ethosverse-namespace.yaml";
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

  /// creates the resource for "multiverse-ingress"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl apply commands
  Future<bool> multiverseIngress() async {
    // fetch the temporary path for configuration file from the assets
    String assetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/multiverse/resources/cluster/ingress-nginx-namespace.yaml";
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
