import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/constants.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/component_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/LeftNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/EutopiaLeftNavigationSectionalTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/tile_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_capability_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_variable_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/web/webPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/appFlow.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:yaml/yaml.dart';

/// EthosAppFlowBob is like Bob the builder
/// for EthosAppFlows for each community
class EthosAppFlowBob {
  /// singleton definition
  EthosAppFlowBob._();

  /// contains the list of app flows for each community
  static Map<int, List<AppFlow>> communityAppFlow = {};

  /// contains the assets path to gramx
  static String gramxAssetsPath = 'lib/community/apps/gramx';

  /// contains the map of community code to asset paths to all gramx community
  static Map<int, Map<String, dynamic>> gramxCommunityAssetsPath = {};

  /// contains the map of community code to local variables
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of variable code name <String> maps to
  ///       map of value of variable <dynamic>
  ///       map of name of variable <String>
  static Map<int, dynamic> gramxAppsLocalVariables = {};

  /// contains the map of community code to local capabilities
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of capability code name <String> maps to
  ///       map of value of capability <Function>
  ///       map of name of capability <String>
  static Map<int, dynamic> gramxAppsLocalCapabilities = {};

  /// contains the map of community code to interaction components
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of component code name <String> maps to
  ///       map of value of component <Widget>
  ///       map of name of component <String>
  static Map<int, dynamic> gramxAppsInteractionComponents = {};

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

  // we need map of community code to org
  // we need map of org to app
  static List<int> recognizedGramxCommunities = [50, 88];

  /// internal instance of LocalNotifications
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  static List<LeftNavigationTab> navigationBarItems = [];

  static List<EutopiaLeftNavigationSectionalTab>
      eutopiaNavigationBarSectionalItems = [];

  static List<AnimationController> _animationControllers = [];

  /// constructor definition
  EthosAppFlowBob() {
    print("EthosAppFlowBob constructor started."); // Add a log statement

    buildCommunityAssetsPath();
    fetchAllCommunityEthosapps();

    print("EthosAppFlowBob constructor completed."); // Add a log statement
  }

  /// Retrieves the variable value associated with a specific application within
  /// a designated community and organization.
  ///
  /// This method searches the [gramxAppsLocalVariables] map to extract the variable value
  /// specific to an application. This variable could represent configurations, settings,
  /// or any data pertinent to the app's functioning.
  ///
  /// Parameters:
  /// - [communityCode]: The unique identifier representing a community.
  /// - [orgName]: The name designating an organization within the aforementioned community.
  /// - [appName]: Specifies the application under the organization where the variable resides.
  /// - [variableNameCode]: The unique code used to identify the variable whose value is sought.
  ///
  /// Returns:
  /// The value of the variable associated with the specified parameters.
  static dynamic getGramxAppsLocalVariableValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String variableNameCode}) {
    return gramxAppsLocalVariables[communityCode]["$orgName-$appName"]
        [variableNameCode];
  }

  /// Retrieves the capability value associated with a specific application within
  /// a designated community and organization.
  ///
  /// This method delves into the [gramxAppsLocalCapabilities] map to extract the functional
  /// capability or feature specific to an application.
  ///
  /// Parameters:
  /// - [communityCode]: The unique identifier representing a community.
  /// - [orgName]: The name designating an organization within the aforementioned community.
  /// - [appName]: Specifies the application under the organization where the capability resides.
  /// - [capabilityNameCode]: The unique code used to identify the capability whose value is sought.
  ///
  /// Returns:
  /// The functional capability or feature associated with the specified parameters. This
  /// could be a method, function, or any other kind of dynamic capability.
  static dynamic getGramxAppsLocalCapabilityValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String capabilityNameCode}) {
    dynamic capability = gramxAppsLocalCapabilities[communityCode]
        ["$orgName-$appName"][capabilityNameCode]['value'];
    return capability;
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
  static dynamic getGramxAppsInteractionComponentValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String componentNameCode}) {
    dynamic component = gramxAppsInteractionComponents[communityCode]
        ["$orgName-$appName"][componentNameCode]['value'];
    return component;
  }

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
  static dynamic getGramxAppsInteractionTileValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String tileNameCode}) {
    print("looking for tile $tileNameCode");
    dynamic tile = gramxAppsInteractionTiles[communityCode]["$orgName-$appName"]
        [tileNameCode]['value'];
    return tile;
  }

  /// Converts a community code to a named path string.
  ///
  /// The [communityCode] is broken down into tenths and ones place values,
  /// which are then converted to their named string representations
  /// using predefined maps.
  ///
  /// Returns a string representing the asset path for the given community code.
  String getNamedPath(int communityCode) {
    int tenths = (communityCode ~/ 10) * 10;
    int ones = communityCode - tenths;
    String namedOnes = namedOnesMap[ones] ?? '';
    String namedTenths = namedTenthsMap[tenths] ?? '';
    return "$gramxAssetsPath/$namedTenths/$namedOnes";
  }

  /// Iterates through community codes from 50 to 99,
  /// building a map of asset paths for each community code.
  ///
  /// Utilizes [getNamedPath] to derive the asset path for each community code.
  /// The resultant paths are stored in the [gramxCommunityAssetsPath] map with
  /// the community code as the key and a map containing 'assetPath' as the value.
  void buildCommunityAssetsPath() {
    for (int communityCode = 50; communityCode < 100; communityCode++) {
      String namedCommunityCodedPath = getNamedPath(communityCode);
      gramxCommunityAssetsPath[communityCode] = {
        'assetPath': namedCommunityCodedPath
      };

      print(
          "Community Assets Path for Code $communityCode: $namedCommunityCodedPath");
    }
  }

  /// Loads the asset from the path and returns the asset as YamlList.
  ///
  /// Given an asset path, this method loads the asset as a string and parses
  /// it into a YamlList. If any errors occur during the loading or parsing
  /// process, an error message is logged and an empty YamlList is returned.
  ///
  /// - Parameter `assetPath`: The path to the asset file. This parameter is required.
  ///
  /// - Returns: A `Future<YamlList>` representing the parsed YamlList from the asset.
  ///
  /// Example Usage:
  /// ```dart
  /// YamlList contracts = await _getContractListFromAssetPath(assetPath: 'assets/ethosapps.yaml');
  /// ```
  Future<YamlList> _getContractListFromAssetPath({required String assetPath}) async {
    try {
      final assetData = await rootBundle.loadString(assetPath);
      YamlList contractList = loadYaml(assetData.toString());
      return contractList;
    } catch (e) {
      // Handle any errors that occur during loading or parsing
      print("Error loading asset from path: $assetPath. Error: $e");
      return YamlList(); // Return an empty YamlList in case of an error
    }
  }


  /// Loads the local variables for a specified application within a given community and organization.
  ///
  /// This method reads a YAML file `ethosapp_local_variables.yaml` from the specified asset path, extracts the local variables data,
  /// and stores them in a map for later usage. This map is then added to a global map `gramxAppsLocalVariables`.
  ///
  /// Parameters:
  ///   - [appAssetPath]: The path to the assets of the application.
  ///   - [communityCode]: The code of the community the application belongs to.
  ///   - [orgName]: The name of the organization the application belongs to.
  ///   - [appName]: The name of the application.
  ///
  /// Throws:
  ///   - May throw an [Exception] if there's an error in fetching the contract list or in processing the YAML data.
  ///
  /// Usage:
  /// ```dart
  /// await _loadAppLocalVariables(
  ///   appAssetPath: "/path/to/app/assets",
  ///   communityCode: 123,
  ///   orgName: "orgName",
  ///   appName: "appName",
  /// );
  /// ```
  ///
  /// The resulting `gramxAppsLocalVariables` will be updated with the new app's local variables data.
  Future<void> _loadAppLocalVariables({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    print("_loadAppLocalVariables - Start for app: $appName");

    final assetPath = '$appAssetPath/ethosapp_local_variables.yaml';
    final YamlList appVariables =
        await _getContractListFromAssetPath(assetPath: assetPath);

    print("Loaded app local variables contracts for app: $appName");

    final appLocalVariablesMap = <String, Map<String, dynamic>>{};

    await Future.forEach(appVariables, (dynamic appVariableContract) async {
      final appVariableData =
          _extractAppVariableData(appVariableContract as YamlMap);
      final String nameCode = appVariableData['nameCode']!;
      appLocalVariablesMap[nameCode] = appVariableData;

      print("Loaded local variable: $nameCode for app: $appName");
    });

    gramxAppsLocalVariables[communityCode] = {
      "$orgName-$appName": appLocalVariablesMap
    };

    print("_loadAppLocalVariables - End for app: $appName");
  }

  /// Extracts and processes the necessary information from a given app variable contract.
  ///
  /// This method reads a [variableContract], processes its data, and returns a structured map containing
  /// the extracted information. This can include details such as the variable's name, type, and default values.
  ///
  /// Parameters:
  ///   - [variableContract]: The contract from which to extract the variable data, typically represented as a [YamlMap].
  ///
  /// Returns:
  ///   - A [Map<String, dynamic>] containing the extracted variable data.
  ///
  /// Throws:
  ///   - May throw an [Exception] or other specific exceptions if there's an error in processing the [variableContract].
  ///
  /// Usage:
  /// ```dart
  /// final extractedData = _extractAppVariableData(variableContract: someVariableContract);
  /// ```
  ///
  /// This method is typically used internally within other methods that process app variable contracts,
  /// preparing the data for further use or storage.
  Map<String, String?> _extractAppVariableData(YamlMap appVariableContract) {
    final String nameCode = appVariableContract['name-code'];
    final String name = appVariableContract['name'];
    final String type = appVariableContract['type'];
    final YamlMap defaultValues = appVariableContract['default'] ?? YamlMap();

    print(
        "_extractAppVariableData - Extracting data for variable: $nameCode, Name: $name, Type: $type");

    final appVariable = LocalVariableComposer().fromVariableContract(
        variableTypeNameCode: type, defaultValues: defaultValues);

    print("_extractAppVariableData - Extracted data for variable: $nameCode");

    return {
      'value': appVariable,
      'type': type,
      'name': name,
      'nameCode': nameCode,
    };
  }

  /// Loads the local capabilities of an application from the provided asset path,
  /// processes them, and stores them in a structured map for later use.
  ///
  /// This method:
  ///   1. Reads the local capabilities contracts file located at
  ///      `$appAssetPath/ethosapp_local_capabilities.yaml`.
  ///   2. Iterates through each capability contract, extracts necessary
  ///      information, and processes it to generate a corresponding capability
  ///      function.
  ///   3. Stores each capability function in a structured map.
  ///   4. Assigns the structured map to `gramxAppsLocalCapabilities` for later use.
  ///
  /// Parameters:
  ///   - [appAssetPath]: The path to the app's assets directory.
  ///   - [communityCode]: An identifier for the community to which the app belongs.
  ///   - [orgName]: The name of the organization under which the app is developed.
  ///   - [appName]: The name of the application.
  ///
  /// This method does not return any value but may throw exceptions if there's
  /// an error in processing the capability contracts.
  ///
  /// Usage:
  /// ```dart
  /// await _loadAppLocalCapabilities(
  ///   appAssetPath: someAppAssetPath,
  ///   communityCode: someCommunityCode,
  ///   orgName: someOrgName,
  ///   appName: someAppName,
  /// );
  /// ```
  Future<void> _loadAppLocalCapabilities({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    print(
        "_loadAppLocalCapabilities - Loading local capabilities for $orgName/$appName");

    final appCapabilities = await _getContractListFromAssetPath(
        assetPath: "$appAssetPath/ethosapp_local_capabilities.yaml");

    print(
        "_loadAppLocalCapabilities - Found ${appCapabilities.length} capability contracts");

    final Map<String, Map<String, dynamic>> appLocalCapabilitiesMap = {};

    for (final appCapabilityContract in appCapabilities) {
      final nameCode = appCapabilityContract['name-code'];
      final name = appCapabilityContract['name'];
      final context = appCapabilityContract['context'];

      final contextExpects = context['expects'] ?? YamlList();
      final contextReturns = context['returns'];
      final contextSteps = context['steps'];

      print(
          "_loadAppLocalCapabilities - Processing capability contract: $nameCode, Name: $name");

      final appCapability = LocalCapabilityComposer().fromContract(
          appName: appName,
          communityCode: communityCode,
          orgName: orgName,
          expects: contextExpects,
          returns: contextReturns,
          steps: contextSteps);

      appLocalCapabilitiesMap[nameCode] = {
        'value': appCapability,
        'name': name
      };

      print(
          "_loadAppLocalCapabilities - Processed capability contract: $nameCode");
    }

    gramxAppsLocalCapabilities[communityCode] = {
      "$orgName-$appName": appLocalCapabilitiesMap
    };

    print(
        "_loadAppLocalCapabilities - Local capabilities loaded for $orgName/$appName");
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
  Future<void> _loadAppInteractionComponents({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    print(
        "_loadAppInteractionComponents - Loading interaction components for $orgName/$appName");

    final appComponents = await _getContractListFromAssetPath(
      assetPath: "$appAssetPath/ethosapp_interaction_components.yaml",
    );

    print(
        "_loadAppInteractionComponents - Found ${appComponents.length} component contracts");

    final Map<String, Map<String, dynamic>> appInteractionComponentsMap = {};

    for (final appComponentContract in appComponents) {
      final nameCode = appComponentContract['name-code'];
      final name = appComponentContract['name'];
      final component = appComponentContract['component'];

      final componentNameCode = component['name-code'] ?? '';

      print(
          "_loadAppInteractionComponents - Processing component contract: $nameCode, Name: $name");

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

      print(
          "_loadAppInteractionComponents - Processed component contract: $nameCode");
    }

    gramxAppsInteractionComponents[communityCode] = {
      "$orgName-$appName": appInteractionComponentsMap,
    };

    print(
        "_loadAppInteractionComponents - Interaction components loaded for $orgName/$appName");
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
  Future<void> _loadAppInteractionTiles({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    print(
        "_loadAppInteractionTiles - Loading interaction tiles for $orgName/$appName");

    final appTiles = await _getContractListFromAssetPath(
      assetPath: "$appAssetPath/ethosapp_interaction_tiles.yaml",
    );

    print("_loadAppInteractionTiles - Found ${appTiles.length} tile contracts");

    final Map<String, Map<String, dynamic>> appInteractionTilesMap = {};

    for (final appTileContract in appTiles) {
      final nameCode = appTileContract['name-code'];
      final name = appTileContract['name'];
      final about = appTileContract['about'];
      final composition = appTileContract['composition'];
      final conditions = appTileContract['conditions'] ?? YamlList();

      print(
          "_loadAppInteractionTiles - Processing tile contract: $nameCode, Name: $name");

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

      print("_loadAppInteractionTiles - Processed tile contract: $nameCode");

      gramxAppsInteractionTiles[communityCode] = {
        "$orgName-$appName": appInteractionTilesMap,
      };
    }

    print(
        "_loadAppInteractionTiles - Interaction tiles loaded for $orgName/$appName");
  }

  /// This method is responsible for loading assets and setting up app flow,
  /// left navigation tab and Eutopia navigation tab for each app in the
  /// organization defined by [organisationEthosappContract].
  ///
  /// It iterates over each app in the organization, loading its assets
  /// sequentially using the [_loadAppAssets] method. Upon successful loading
  /// of the assets, it sets up the app flow, left navigation tab, and Eutopia
  /// navigation tab for the app. It further notifies the `NotificationsBloc`
  /// about the loaded app and updates the [gramxCommunityAssetsPath] map with
  /// the organization data.
  ///
  /// Params:
  /// - [organisationEthosappContract]: A YAML map containing the organization's
  ///   contract information including the name and the apps in the organization.
  /// - [communityAssetsPath]: The path to the community's assets.
  /// - [communityCode]: The code representing the community.
  ///
  /// The method returns a [Future] that resolves to `void`.
  ///
  /// Throws:
  /// This method may throw exceptions that arise from `_loadAppAssets`,
  /// `_createAppFlow`, `_createLeftNavigationTab`, and `_createEutopiaTab`
  /// methods, as well as any exceptions that arise from accessing
  /// [communityAppFlow], [navigationBarItems], [eutopiaNavigationBarSectionalItems],
  /// or [gramxCommunityAssetsPath].
  Future<void> _loadCommunityOrganisationEthosappContracts({
    required YamlMap organisationEthosappContract,
    required String communityAssetsPath,
    required int communityCode,
  }) async {
    print("_loadCommunityOrganisationEthosappContracts - Start");
    final orgName = organisationEthosappContract['organisation'];
    final orgAssetPath = "$communityAssetsPath/$orgName";
    final orgApps = organisationEthosappContract['apps'] as YamlList;
    final List<Map<String, dynamic>> orgAppsPaths = [];

    // Log the number of apps being loaded for the organization
    print("Loading ${orgApps.length} apps for organization: $orgName");

    for (final appName in orgApps) {
      final appAssetPath = '$orgAssetPath/$appName';
      orgAppsPaths.add({
        'name': appName,
        'assetPath': appAssetPath,
      });

      // Load app assets sequentially
      print("Start loading assets for app: $appName (Organization: $orgName, Community Code: $communityCode)");
      await _loadAppAssets(
        appAssetPath: appAssetPath,
        appName: appName,
        communityCode: communityCode,
        orgName: orgName,
      );
      print("Assets loaded for app: $appName (Organization: $orgName, Community Code: $communityCode)");
    }

    final appFlow = _createAppFlow(communityCode);
    print("App flow created for communityCode: $communityCode");
    communityAppFlow[communityCode]!.add(appFlow);

    final leftNavigationTab = _createLeftNavigationTab(appFlow);
    print("Left navigation tab created for communityCode: $communityCode");
    navigationBarItems.add(leftNavigationTab);

    final eutopiaTab = _createEutopiaTab(leftNavigationTab);
    print("Eutopia tab created for communityCode: $communityCode");
    eutopiaNavigationBarSectionalItems.add(eutopiaTab);

    NotificationsBloc.instance.newNotification(
        LocalNotification("EthosAppFlowBob", {"subType": "Loaded eApp"}));

    try {
      // Attempt to access the nested properties
      final orgData = gramxCommunityAssetsPath[communityCode]?['organisations'];
      if (orgData != null) {
        print('"organisations" is not null');
        gramxCommunityAssetsPath[communityCode]!['organisations'].add(
            {'name': orgName, 'assetPath': orgAssetPath, 'apps': orgAppsPaths});
      } else {
        // Handle the case where 'organisations' is null
        print('Error: The property "organisations" is null.');
        // TODO: handle this with notifications maybe
      }
    } catch (e) {
      // Handle any exceptions that might occur
      print('An error occurred: $e');
      // TODO: handle this with notifications maybe
    }
    //
    // // add the orgdata to assetsPath
    // gramxCommunityAssetsPath[communityCode]!['organisations'].add(
    //     {'name': orgName, 'assetPath': orgAssetPath, 'apps': orgAppsPaths});
    print("_loadCommunityOrganisationEthosappContracts - End");
  }

  /// Loads assets for a given app within a specified organization and community.
  ///
  /// This method is responsible for loading various assets related to an app, such as local variables,
  /// local capabilities, interaction components, interaction tiles, and interaction pages.
  /// It's crucial for setting up the environment and behavior of the app within the community and organization context.
  ///
  /// Params:
  /// - [appAssetPath]: The path to the assets of the app.
  /// - [appName]: The name of the app.
  /// - [communityCode]: The code representing the community.
  /// - [orgName]: The name of the organization.
  ///
  /// The method returns a [Future] that resolves to `void`.
  ///
  /// The method executes the following steps sequentially:
  /// 1. Load app local variables using the [_loadAppLocalVariables] method.
  /// 2. Load app local capabilities using the [_loadAppLocalCapabilities] method.
  /// 3. Load app interaction components using the [_loadAppInteractionComponents] method.
  /// 4. Load app interaction tiles using the [_loadAppInteractionTiles] method.
  /// 5. (Optional) Load app interaction pages if there are additional steps to handle pages.
  ///
  /// Throws:
  /// This method may throw exceptions that arise from the methods used to load various assets.
  Future<void> _loadAppAssets({
    required String appAssetPath,
    required String appName,
    required int communityCode,
    required String orgName,
  }) async {
    print("_loadAppAssets - Start for app: $appName");

    print("Loading app local variables for app: $appName");
    await _loadAppLocalVariables(
      appAssetPath: appAssetPath,
      appName: appName,
      communityCode: communityCode,
      orgName: orgName,
    );
    print("App local variables loaded for app: $appName");

    print("Loading app local capabilities for app: $appName");
    await _loadAppLocalCapabilities(
      appAssetPath: appAssetPath,
      appName: appName,
      communityCode: communityCode,
      orgName: orgName,
    );
    print("App local capabilities loaded for app: $appName");

    print("Loading app interaction components for app: $appName");
    await _loadAppInteractionComponents(
      appAssetPath: appAssetPath,
      communityCode: communityCode,
      orgName: orgName,
      appName: appName,
    );
    print("App interaction components loaded for app: $appName");

    print("Loading app interaction tiles for app: $appName");
    await _loadAppInteractionTiles(
      appAssetPath: appAssetPath,
      communityCode: communityCode,
      orgName: orgName,
      appName: appName,
    );
    print("App interaction tiles loaded for app: $appName");

    // Optionally, Load app interaction pages if necessary
    // Implementation depending on your application's requirements

    print("_loadAppAssets - End for app: $appName");
  }

  /// Creates an [AppFlow] instance for a given community.
  ///
  /// This method encapsulates the creation of an [AppFlow] instance, which represents the flow of an app within a specified community.
  /// The AppFlow is initialized with predefined values for index, title, icon, color, and the first page of the app flow.
  /// The community code is passed as a parameter to this method to ensure the AppFlow is associated with the correct community.
  ///
  /// Params:
  /// - [communityCode]: The code representing the community. This code is used to set the `code` field of the [AppFlow] instance.
  ///
  /// Returns:
  /// - An [AppFlow] instance with the specified `communityCode`, and other fields initialized to predefined values.
  ///
  /// Usage:
  /// ```dart
  /// final appFlow = _createAppFlow(communityCode);
  /// ```
  ///
  /// This method can be used whenever an [AppFlow] instance is needed for a community, ensuring a consistent setup for the app flow across different parts of the application.
  AppFlow _createAppFlow(int communityCode) {
    return AppFlow(
      index: 1,
      title: 'Identity',
      code: communityCode,
      iconData: FeatherIcons.shield,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: WebViewPage(index: 1, containingFlowTitle: 'Ethos Identity'),
    );
  }

  /// Creates a [LeftNavigationTab] instance using a given [AppFlow] instance.
  ///
  /// This method encapsulates the creation of a [LeftNavigationTab] instance, which represents a navigational item on the left-hand side of the application.
  /// The [LeftNavigationTab] is initialized with values extracted from the given [AppFlow] instance, such as title, code, icon, and navigator key.
  /// This ensures a consistent and direct mapping between the app flow and the left navigation tab.
  ///
  /// The `initialPageBuilder` property is defined to return the `firstPage` of the specified [appFlow] when invoked.
  ///
  /// Params:
  /// - [appFlow]: The [AppFlow] instance from which the values for initializing the [LeftNavigationTab] are extracted.
  ///
  /// Returns:
  /// - A [LeftNavigationTab] instance initialized with values extracted from the specified [appFlow].
  ///
  /// Usage:
  /// ```dart
  /// final leftNavigationTab = _createLeftNavigationTab(appFlow);
  /// ```
  ///
  /// This method can be used whenever a [LeftNavigationTab] instance is needed for an app flow, ensuring a consistent setup for the navigation tab across different parts of the application.
  LeftNavigationTab _createLeftNavigationTab(AppFlow appFlow) {
    return LeftNavigationTab(
      leftNavigationBarSectionalItem: LeftNavigationBarSectionalItem(
        label: appFlow.title,
        code: appFlow.code,
        icon: Icon(appFlow.iconData),
      ),
      navigatorKey: appFlow.navigatorKey,
      initialPageBuilder: (context) {
        return appFlow.firstPage;
      },
    );
  }

  /// Creates a [EutopiaLeftNavigationSectionalTab] instance using a given [LeftNavigationTab] instance.
  ///
  /// This method encapsulates the creation of a [EutopiaLeftNavigationSectionalTab] instance,
  /// which represents a tab in the left navigation section in a Eutopia-based UI.
  /// The [EutopiaLeftNavigationSectionalTab] is initialized with values extracted from
  /// the given [LeftNavigationTab] instance, ensuring a direct mapping between the left navigation tab
  /// and the Eutopia left navigation sectional tab.
  ///
  /// Params:
  /// - [leftNavigationTab]: The [LeftNavigationTab] instance from which the values for
  ///   initializing the [EutopiaLeftNavigationSectionalTab] are extracted.
  ///
  /// Returns:
  /// - A [EutopiaLeftNavigationSectionalTab] instance initialized with values extracted
  ///   from the specified [LeftNavigationTab].
  ///
  /// Usage:
  /// ```dart
  /// final eutopiaTab = _createEutopiaTab(leftNavigationTab);
  /// ```
  ///
  /// This method can be used whenever a [EutopiaLeftNavigationSectionalTab] instance
  /// is needed for a left navigation tab, ensuring a consistent setup for the Eutopia tab
  /// across different parts of the application.
  EutopiaLeftNavigationSectionalTab _createEutopiaTab(
      LeftNavigationTab leftNavigationTab) {
    return EutopiaLeftNavigationSectionalTab(
      leftNavigationBarSectionalItem:
          leftNavigationTab.leftNavigationBarSectionalItem,
      navigatorKey: leftNavigationTab.navigatorKey,
      subtreeKey: GlobalKey(),
      initialPageBuilder: leftNavigationTab.initialPageBuilder,
    );
  }

  /// Loads the ethos app contracts for a specified Gramx community.
  ///
  /// Given the community code, this method initializes the `communityAppFlow`
  /// for the specified community to an empty list. It obtains the community
  /// assets path, fetches all ethos app contracts associated with the community
  /// from the specified asset path, and iterates through each contract to load
  /// the ethos app contracts for each organization in the community.
  ///
  /// - Parameter `communityCode`: The code of the Gramx community whose ethos
  ///   app contracts need to be loaded. This parameter is required.
  ///
  /// This method performs asynchronous operations and returns a `Future<void>`
  /// which completes once all ethos app contracts have been loaded for the
  /// specified community.
  ///
  /// Example Usage:
  /// ```dart
  /// await _loadCommunityEthosappContracts(communityCode: 1);
  /// ```
  Future<void> _loadCommunityEthosappContracts(
      {required int communityCode}) async {
    print(
        "_loadCommunityEthosappContracts - Start for communityCode: $communityCode");
    communityAppFlow[communityCode] = [];
    String communityAssetsPath;

    try {
      communityAssetsPath = _getCommunityAssetsPath(communityCode);
      print(
          "_loadCommunityEthosappContracts - Assets fetched for communityCode: $communityCode");
    } catch (e) {
      print(
          "_loadCommunityEthosappContracts - Couldn't start due to missing communityAssetsPath for communityCode: $communityCode");
      return; // Exit the function if assets path is not found.
    }

    List ethosappContracts;

    try {
      ethosappContracts = await _fetchEthosappContracts(communityAssetsPath);
      print(
          "_loadCommunityEthosappContracts - Fetched ${ethosappContracts.length} contracts for communityCode: $communityCode");
    } catch (e) {
      print(
          "_loadCommunityEthosappContracts - Couldn't start due to error while fetching ethosappContracts for communityCode: $communityCode, error: $e");
      return; // Exit the function if ethosappContracts are not fetched.
    }

    await Future.wait(
      ethosappContracts.map(
        (contract) => _loadCommunityOrganisationEthosappContracts(
          communityAssetsPath: communityAssetsPath,
          communityCode: communityCode,
          organisationEthosappContract: contract,
        ),
      ),
    );

    print(
        "_loadCommunityEthosappContracts - End for communityCode: $communityCode");
  }

  /// Retrieves the assets path for a specified Gramx community.
  ///
  /// Given a community code, this method looks up the corresponding assets
  /// path for the community from a predefined mapping or performs necessary
  /// operations to derive the assets path.
  ///
  /// - Parameter `communityCode`: The code of the Gramx community whose assets
  ///   path is to be retrieved. This parameter is required.
  ///
  /// - Returns: The assets path string for the specified Gramx community.
  ///
  /// Example Usage:
  /// ```dart
  /// String assetsPath = _getCommunityAssetsPath(communityCode: 1);
  /// ```
  String _getCommunityAssetsPath(int communityCode) {
    try {
      final assetsPath = gramxCommunityAssetsPath[communityCode]!['assetPath'];
      if (assetsPath != null) {
        return assetsPath;
      } else {
        print("Error: Assets path not found for communityCode: $communityCode");
        // You can throw an exception here if needed or return a default value.
        return ''; // Return an empty string as a fallback.
      }
    } catch (e) {
      print(
          "Error: Failed to retrieve assets path for communityCode: $communityCode");
      // You can throw an exception here or handle it as per your requirement.
      return ''; // Return an empty string as a fallback.
    }
  }

  /// Fetches all ethos app contracts from a specified assets path.
  ///
  /// Given an assets path, this method reads the `ethosapps.yaml` file located
  /// at the specified path, parses it, and constructs a list of ethos app
  /// contract objects based on the contents of the file.
  ///
  /// - Parameter `assetsPath`: The path to the directory containing the
  ///   `ethosapps.yaml` file. This parameter is required.
  ///
  /// - Returns: A `Future<List>` containing all ethos app contracts obtained
  ///   from the specified assets path. The future completes once all contracts
  ///   have been fetched and parsed.
  ///
  /// This method performs asynchronous operations due to file I/O and returns
  /// a `Future<List>` which completes once all operations have been completed.
  ///
  /// Example Usage:
  /// ```dart
  /// List contracts = await _fetchEthosappContracts(assetsPath: 'assets/ethosapps/');
  /// ```
  Future<List> _fetchEthosappContracts(String communityAssetsPath) async {
    try {
      final contracts = await _getContractListFromAssetPath(
          assetPath: "$communityAssetsPath/ethosapps.yaml");
      return contracts;
    } catch (e) {
      print(
          "Error: Failed to fetch ethos app contracts for assetsPath: $communityAssetsPath");
      // Handle the error as per your requirement. You can throw an exception here or return a default value.
      return []; // Return an empty list as a fallback.
    }
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
    print("fetchAllCommunityEthosapps - Start");

    await Future.wait(recognizedGramxCommunities.map(
        (recognizedCommunityCode) => _loadCommunityEthosappContracts(
            communityCode: recognizedCommunityCode)));

    print("fetchAllCommunityEthosapps - Contracts loaded for all communities");
    _printDebugInfo();
    print("fetchAllCommunityEthosapps - End");
  }

  void _printDebugInfo() {
    print("------------------------------------------------------------------");
    print("gramxAppsLocalVariables: $gramxAppsLocalVariables");
    print("gramxAppsLocalCapabilities: $gramxAppsLocalCapabilities");
    print("gramxAppsInteractionComponents: $gramxAppsInteractionComponents");
    print("gramxAppsInteractionTiles: $gramxAppsInteractionTiles");
    print("------------------------------------------------------------------");
  }
}
