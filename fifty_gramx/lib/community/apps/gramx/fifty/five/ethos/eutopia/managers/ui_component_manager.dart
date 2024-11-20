// ui_component_manager.dart
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/asset_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/component_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/tile_composer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:yaml/yaml.dart';

class UIComponentManager {
  // Private constructor
  UIComponentManager._privateConstructor();

  // The single instance of the class
  static final UIComponentManager _instance =
      UIComponentManager._privateConstructor();

  // Access to the singleton instance
  static UIComponentManager get instance => _instance;

  /// contains the map of community code to interaction components
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of component code name <String> maps to
  ///       map of value of component <Widget>
  ///       map of name of component <String>
  static Map<int, dynamic> gramxAppsInteractionComponents = {};

  /// contains the map of community code to interaction pages
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of page code name <String> maps to
  ///       map of value of page <Widget>
  ///       map of name of page <String>
  ///       map of about of tile <String>
  static Map<int, dynamic> gramxAppsInteractionPages = {};

  /// contains the map of community code to interaction tiles
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of tile code name <String> maps to
  ///       map of value of tile <Widget>
  ///       map of name of tile <String>
  ///       map of about of tile <String>
  static Map<int, dynamic> gramxAppsInteractionTiles = {};

  /// Fetches the value associated with a specific interaction tile for a given app
  /// within a specified community and organization.
  ///
  /// This method dives into the [gramxAppsInteractionTiles] map to retrieve the widget
  /// or component that represents an interaction tile in the UI.
  ///
  /// Parameters:
  /// - [communityCode]: The unique code that identifies a community.
  /// - [orgName]: The name of the organization within the community.
  /// - [appName]: The name of the application under the specified organization.
  /// - [tileNameCode]: The unique code name of the tile whose value is to be fetched.
  ///
  /// Returns:
  /// The [Widget] (or UI component) that represents the interaction tile.
  /// It can be used directly within the UI tree.
  dynamic getGramxAppsInteractionTileValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String tileNameCode}) {
    dynamic tile = gramxAppsInteractionTiles[communityCode]["$orgName-$appName"]
        [tileNameCode]['value'];
    return tile;
  }

  /// Adds interaction tiles for a specific community, organization, and app.
  void addGramxAppsInteractionTiles({
    required int communityCode,
    required String orgName,
    required String appName,
    required Map<String, dynamic> appInteractionTilesMap,
  }) {
    // Ensure the community code entry exists
    if (!gramxAppsInteractionTiles.containsKey(communityCode)) {
      gramxAppsInteractionTiles[communityCode] = {};
    }

    // Add the interaction tiles for the specific app under the organization
    gramxAppsInteractionTiles[communityCode]["$orgName-$appName"] =
        appInteractionTilesMap;
  }

  /// Fetches the value associated with a specific interaction component for a given app
  /// within a specified community and organization.
  ///
  /// This method accesses the [gramxAppsInteractionComponents] map to retrieve the widget
  /// or component that represents an interaction component in the UI.
  ///
  /// Parameters:
  /// - [communityCode]: The unique code that identifies a community.
  /// - [orgName]: The name of the organization within the community.
  /// - [appName]: The name of the application under the specified organization.
  /// - [componentNameCode]: The unique code name of the component whose value is to be fetched.
  ///
  /// Returns:
  /// The [Widget] (or UI component) that represents the interaction component.
  /// It can be used directly within the UI tree.
  dynamic getGramxAppsInteractionComponentValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String componentNameCode}) {
    dynamic component = gramxAppsInteractionComponents[communityCode]
        ["$orgName-$appName"][componentNameCode]['value'];
    return component;
  }

  /// Adds a single app flow to the community specified by communityCode
  void addGramxAppsInteractionComponentsValue({
    required int communityCode,
    required String orgName,
    required String appName,
    required Map<String, Map<String, dynamic>> appInteractionComponentsMap,
  }) {
    gramxAppsInteractionComponents[communityCode] = {
      "$orgName-$appName": appInteractionComponentsMap,
    };
  }

  /// Loads the interaction components of an application from the specified asset path,
  /// processes them, and stores them in a structured map for later use.
  ///
  /// This method:
  ///   1. Reads the interaction components contracts file located at
  ///      `$appAssetPath/ethosapp_interaction_components.yaml`.
  ///   2. Iterates through each component contract, extracts necessary
  ///      information, and processes it to generate a corresponding component Widget.
  ///   3. Stores each component Widget in a structured map.
  ///   4. Assigns the structured map to `gramxAppsInteractionComponents` for later use.
  ///
  /// Parameters:
  ///   - [appAssetPath]: The path to the app's assets directory.
  ///   - [communityCode]: An identifier for the community to which the app belongs.
  ///   - [orgName]: The name of the organization under which the app is developed.
  ///   - [appName]: The name of the application.
  ///
  /// Usage:
  /// ```dart
  /// await _loadAppInteractionComponents(
  ///   appAssetPath: someAppAssetPath,
  ///   communityCode: someCommunityCode,
  ///   orgName: someOrgName,
  ///   appName: someAppName,
  /// );
  /// ```
  Future<void> loadAppInteractionComponents({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    try {
      final appComponents =
          await AssetManager.instance.getContractListFromAssetPath(
        assetPath: "$appAssetPath/ethosapp_interaction_components.yaml",
      );

      final Map<String, Map<String, dynamic>> appInteractionComponentsMap = {};

      for (final appComponentContract in appComponents) {
        if (appComponentContract == null) {
          break;
        }
        try {
          final nameCode = appComponentContract['name-code'];
          final name = appComponentContract['name'];
          final component = appComponentContract['component'];

          final componentNameCode = component['name-code'] ?? '';

          final appComponent = ComponentComposer().fromComponentContract(
            communityCode: communityCode,
            orgName: orgName,
            appName: appName,
            componentNameCode: componentNameCode,
            componentProperties: component,
          );

          appInteractionComponentsMap[nameCode] = {
            'value': appComponent,
            'name': name,
          };
        } catch (e) {
          // Handle the exception here or rethrow it as needed
          throw Exception("Error processing component contract: $e");
        }
      }

      addGramxAppsInteractionComponentsValue(
          communityCode: communityCode,
          orgName: orgName,
          appName: appName,
          appInteractionComponentsMap: appInteractionComponentsMap);
    } catch (e) {
      // Handle any errors that occur during loading

      throw e;
    }
  }

  /// Loads interaction tiles of an application from the specified asset path,
  /// processes them, and stores them in a structured map for later use.
  ///
  /// This method:
  ///   1. Reads the interaction tiles contracts file located at
  ///      `$appAssetPath/ethosapp_interaction_tiles.yaml`.
  ///   2. Iterates through each tile contract, extracts necessary
  ///      information, and processes it to generate a corresponding tile Widget.
  ///   3. Stores each tile Widget in a structured map.
  ///   4. Assigns the structured map to `gramxAppsInteractionTiles` for later use.
  ///
  /// Parameters:
  ///   - [appAssetPath]: The path to the app's assets directory.
  ///   - [communityCode]: An identifier for the community to which the app belongs.
  ///   - [orgName]: The name of the organization under which the app is developed.
  ///   - [appName]: The name of the application.
  ///
  /// Usage:
  /// ```dart
  /// await _loadAppInteractionTiles(
  ///   appAssetPath: someAppAssetPath,
  ///   communityCode: someCommunityCode,
  ///   orgName: someOrgName,
  ///   appName: someAppName,
  /// );
  /// ```
  Future<void> loadAppInteractionTiles({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    final appTiles = await AssetManager.instance.getContractListFromAssetPath(
      assetPath: "$appAssetPath/ethosapp_interaction_tiles.yaml",
    );

    final Map<String, Map<String, dynamic>> appInteractionTilesMap = {};

    for (final appTileContract in appTiles) {
      if (appTileContract == null) {
        break;
      }

      final nameCode = appTileContract['name-code'];
      final name = appTileContract['name'];
      final about = appTileContract['about'];
      final composition = appTileContract['composition'];
      final conditions = appTileContract['conditions'] ?? YamlList();

      final compositionNameCode = composition['name-code'] ?? '';

      final composedComponent = ComponentComposer().fromComponentContract(
        communityCode: communityCode,
        orgName: orgName,
        appName: appName,
        componentNameCode: compositionNameCode,
        componentProperties: composition,
      );

      final appTile = TileComposer().fromContract(
        communityCode: communityCode,
        orgName: orgName,
        appName: appName,
        conditions: conditions,
        composedComponent: composedComponent,
      );

      appInteractionTilesMap[nameCode] = {
        'value': appTile,
        'name': name,
        'about': about,
      };

      addGramxAppsInteractionTiles(
          communityCode: communityCode,
          orgName: orgName,
          appName: appName,
          appInteractionTilesMap: appInteractionTilesMap);
    }
  }
}
