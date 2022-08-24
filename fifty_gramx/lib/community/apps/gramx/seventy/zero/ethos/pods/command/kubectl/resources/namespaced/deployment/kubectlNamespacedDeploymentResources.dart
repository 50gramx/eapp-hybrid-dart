import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:process_run/shell.dart';
import 'package:yaml/yaml.dart';

class KubectlNamespacedDeploymentResources {
  /// contains the base command for resource management commands
  static String _baseCommandSpace = "";

  /// contains the multiverse base command for resource management commands
  static String _multiverseBaseCommandSpace = "";

  /// contains the multiverse base command for resource management commands
  static String _multiverseDeploymentBCS = "";

  // initialises the class
  KubectlNamespacedDeploymentResources(String baseCommandSpace) {
    print(
        "KubectlNamespacedDeploymentResources:baseCommandSpace: $baseCommandSpace");
    // initialisation of base command
    _baseCommandSpace = baseCommandSpace;

    // initialisation of namespace command for multiverse
    _multiverseBaseCommandSpace = "$_baseCommandSpace --namespace ethosverse";

    // initialisation of namespace command for multiverse
    // specific to deployment commands
    _multiverseDeploymentBCS =
        "$_multiverseBaseCommandSpace deployment -o yaml";
  }

  /// creates the resource for "multiverse-file-system"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl apply commands
  Future<bool> multiverseFileSystem() async {
    String tempBaseCommandSpace = _baseCommandSpace;
    // fetch the temporary path for configuration file from the assets
    String assetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/multiverse/resources/namespaced/multiverse-filesystem-deployment.yaml";
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
    String command = "$multiverseBaseCommandSpace deployment filesystem";
    // run the command
    await SimpleCommandExecuter.run(command);
    return true;
  }

  /// creates the resource for "multiverse-chains-identity"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl apply commands
  Future<bool> multiverseChainsIdentity() async {
    String tempBaseCommandSpace = _baseCommandSpace;
    // fetch the temporary path for configuration file from the assets
    String assetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/multiverse/resources/namespaced/multiverse-chains-identity-deployment.yaml";
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

  /// deletes the resource for "multiverse-chains-identity"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl delete commands
  Future<bool> deleteMultiverseChainsIdentity() async {
    String multiverseBaseCommandSpace = _multiverseBaseCommandSpace;
    // build the command
    String command = "$multiverseBaseCommandSpace deployment identity-chains";
    // run the command
    await SimpleCommandExecuter.run(command);
    return true;
  }

  /// gets the resource "multiverse-file-system" in a yaml parsed format
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl get commands
  Future<dynamic> getMultiverseFileSystem() async {
    // fetches the deployment info
    // build the command
    String command = "$_multiverseDeploymentBCS filesystem";
    // run the command
    List<ProcessResult> output = await SimpleCommandExecuter.run(command);
    dynamic parsedOutput = loadYaml(output.outText);
    return parsedOutput;
  }

  /// gets the resource "multiverse-chains-identity" in a yaml parsed format
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl get commands
  Future<dynamic> getMultiverseChainsIdentity() async {
    // fetches the deployment info
    // build the command
    String command = "$_multiverseDeploymentBCS identity-chains";
    // run the command
    List<ProcessResult> output = await SimpleCommandExecuter.run(command);
    dynamic parsedOutput = loadYaml(output.outText);
    return parsedOutput;
  }

  /// gets the status of resource "multiverse-file-system"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl get commands
  Future<bool> multiverseFileSystemStatus() async {
    dynamic parsedOutput = await getMultiverseFileSystem();
    if (parsedOutput == null) {
      return false;
    }
    YamlMap parsedStatus = _getParsedDeploymentStatus(parsedOutput);
    YamlList parsedStatusConditions =
        _getParsedDeploymentStatusConditions(parsedStatus);
    return isDeploymentRolling(parsedStatusConditions);
  }

  /// gets the status of resource "multiverse-chains-identity"
  ///
  /// warning, it is intended to work only
  /// when nested under kubectl get commands
  Future<bool> multiverseChainsIdentityStatus() async {
    dynamic parsedOutput = await getMultiverseChainsIdentity();
    if (parsedOutput == null) {
      return false;
    }
    YamlMap parsedStatus = _getParsedDeploymentStatus(parsedOutput);
    YamlList parsedStatusConditions =
        _getParsedDeploymentStatusConditions(parsedStatus);
    return isDeploymentRolling(parsedStatusConditions);
  }

  YamlMap _getParsedDeploymentStatus(YamlMap parsedOutput) {
    YamlMap parsedStatus = parsedOutput['status'];
    return parsedStatus;
  }

  YamlList _getParsedDeploymentStatusConditions(YamlMap parsedStatus) {
    YamlList parsedStatusConditions = parsedStatus['conditions'];
    return parsedStatusConditions;
  }

  bool isDeploymentRolling(YamlList parsedStatusConditions) {
    // parsing the first of two conditions
    // second one contains the conditions for new replica sets
    YamlMap parsedStatusConditionsFirst = parsedStatusConditions[0];

    // we need three identifiers to check whether
    // the deployment is rolling or not which are
    // reason, status and type
    String firstStatusReason = parsedStatusConditionsFirst['reason'];
    String firstStatusValue = parsedStatusConditionsFirst['status'];
    String firstStatusType = parsedStatusConditionsFirst['type'];

    if (firstStatusType == 'Progressing' && firstStatusValue == 'True') {
      if (firstStatusReason == 'NewReplicaSetAvailable') {
        return true;
      }
    } else if (firstStatusType == 'Available' && firstStatusValue == 'True') {
      if (firstStatusReason == 'MinimumReplicasAvailable') {
        return true;
      }
    }

    return false;
  }
}
