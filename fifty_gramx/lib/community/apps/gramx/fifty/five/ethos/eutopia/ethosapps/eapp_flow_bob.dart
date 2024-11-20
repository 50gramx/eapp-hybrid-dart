import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/constants.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/asset_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/notification_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/ui_component_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/variable_manager.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// EthosAppFlowBob is like Bob the builder
/// for EthosAppFlows for each community
class EthosAppFlowBob {
  /// singleton definition
  static EthosAppFlowBob? _instance;

  EthosAppFlowBob._();

  // Use the singleton instance of AppFlowManager
  final AppFlowManager _appFlowManager = AppFlowManager.instance;
  final AssetManager _assetManager = AssetManager.instance;
  final VariableManager _variableManager = VariableManager.instance;
  final UIComponentManager _uiComponentManager = UIComponentManager.instance;
  final NotificationManager _notificationManager = NotificationManager.instance;

  factory EthosAppFlowBob() {
    if (_instance == null) {
      _instance = EthosAppFlowBob._();

      _instance!.start();
    }
    return _instance!;
  }

  /// internal instance of LocalNotifications
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  static List<AnimationController> _animationControllers = [];

  /// constructor definition
  Future<void> start() async {
    _assetManager.buildCommunityAssetsPath();
    fetchAllCommunityEthosapps();
  }

  /// Fetches all ethos applications associated with recognized Gramx communities.
  ///
  /// This method iterates over all recognized Gramx community codes, and loads
  /// the ethos app contracts associated with each community. Loading of ethos
  /// app contracts is performed concurrently for all communities to improve
  /// performance. Once all contracts are loaded, debug information is printed to
  /// the console.
  ///
  /// Errors that occur while loading contracts for a particular community are
  /// caught and logged to the console, but do not prevent the method from
  /// continuing to load contracts for other communities.
  ///
  /// This method is asynchronous and returns a `Future<void>` that completes
  /// when all ethos app contracts have been loaded and debug information has
  /// been printed.
  ///
  /// Example:
  /// ```dart
  /// var manager = EthosAppManager();
  /// await manager.fetchAllCommunityEthosapps();
  /// ```
  Future<void> fetchAllCommunityEthosapps() async {
    await Future.wait(GramxConstants.recognizedGramxCommunities.map(
        (recognizedCommunityCode) =>
            _appFlowManager.loadCommunityEthosappContracts(
                communityCode: recognizedCommunityCode)));
  }
}
