import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/component_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/tile_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_capability_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_variable_composer.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/appFlow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  static List<int> recognizedGramxCommunities = [50];

  /// constructor definition
  EthosAppFlowBob() {
    _buildGramxCommunityAssetsPath();
    fetchAllCommunityEthosapps();
  }

  static dynamic getGramxAppsLocalVariableValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String variableNameCode}) {
    return gramxAppsLocalVariables[communityCode]["$orgName-$appName"]
        [variableNameCode];
  }

  static dynamic getGramxAppsLocalCapabilityValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String capabilityNameCode}) {
    dynamic capability = gramxAppsLocalCapabilities[communityCode]
        ["$orgName-$appName"][capabilityNameCode]['value'];
    return capability;
  }

  static dynamic getGramxAppsInteractionComponentValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String componentNameCode}) {
    dynamic component = gramxAppsInteractionComponents[communityCode]
        ["$orgName-$appName"][componentNameCode]['value'];
    return component;
  }

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

  /// builds the asset path for all gramx community
  ///
  /// from numbered community code to named community code
  _buildGramxCommunityAssetsPath() {
    Map<int, String> namedOnesMap = {
      0: 'zero',
      1: 'one',
      2: 'two',
      3: 'three',
      4: 'four',
      5: 'five',
      6: 'six',
      7: 'seven',
      8: 'eight',
      9: 'nine',
    };
    Map<int, String> namedTenthsMap = {
      50: 'fifty',
      60: 'sixty',
      70: 'seventy',
      80: 'eighty',
      90: 'ninety',
    };
    for (int communityCode = 50; communityCode < 100; communityCode++) {
      int tenths = (communityCode ~/ 10) * 10;
      int ones = communityCode - tenths;
      String namedOnes = namedOnesMap[ones] ?? '';
      String namedTenths = namedTenthsMap[tenths] ?? "";
      String namedCommunityCodedPath =
          "$gramxAssetsPath/$namedTenths/$namedOnes";
      gramxCommunityAssetsPath[communityCode] = {};
      gramxCommunityAssetsPath[communityCode]!['assetPath'] =
          namedCommunityCodedPath;
    }
  }

  /// loads the asset from the path
  /// and returns the asset as YamlList
  Future<YamlList> _getContractListFromAssetPath(
      {required String assetPath}) async {
    final assetData = await rootBundle.loadString(assetPath);
    YamlList contractList = loadYaml(assetData.toString());
    return contractList;
  }

  /// loads the asset from the path
  /// and returns the asset as YamlMap
  Future<YamlMap> _getContractFromAssetPath({required String assetPath}) async {
    final assetData = await rootBundle.loadString(assetPath);
    YamlMap contract = loadYaml(assetData.toString());
    return contract;
  }

  _loadAppLocalVariables(
      {required String appAssetPath,
      required int communityCode,
      required String orgName,
      required String appName}) async {
    // fetch all the variable contracts
    YamlList appVariables = await _getContractListFromAssetPath(
        assetPath: "$appAssetPath/ethosapp_local_variables.yaml");

    // to store the variable map locally
    Map<String, Map<String, dynamic>> appLocalVariablesMap = {};

    // loop through all contracts
    for (int variableIndex = 0;
        variableIndex < appVariables.length;
        variableIndex++) {
      // get the variable contract
      YamlMap appVariableContract = appVariables[variableIndex];

      // get information from contract
      String nameCode = appVariableContract['name-code']; // name-code
      String name = appVariableContract['name']; // name
      String type = appVariableContract['type']; // type
      YamlMap defaultValues =
          appVariableContract['default'] ?? YamlMap(); // default-value

      // build from contract
      dynamic appVariable = LocalVariableComposer().fromVariableContract(
          variableTypeNameCode: type, defaultValues: defaultValues);

      // add each variable to map
      appLocalVariablesMap[nameCode] = {
        'value': appVariable,
        'type': type,
        'name': name
      };
    }

    // assign the map to gramx ethosapp local variables
    gramxAppsLocalVariables[communityCode] = {
      "$orgName-$appName": appLocalVariablesMap
    };
  }

  _loadAppLocalCapabilities(
      {required String appAssetPath,
      required int communityCode,
      required String orgName,
      required String appName}) async {
    // fetch all the capabilities contracts
    YamlList appCapabilities = await _getContractListFromAssetPath(
        assetPath: "$appAssetPath/ethosapp_local_capabilities.yaml");

    // to store the capability map locally
    Map<String, Map<String, dynamic>> appLocalCapabilitiesMap = {};

    // loop through all contracts
    for (int capabilityIndex = 0;
        capabilityIndex < appCapabilities.length;
        capabilityIndex++) {
      // get the variable contract
      YamlMap appCapabilityContract = appCapabilities[capabilityIndex];

      // get information from contract
      String nameCode = appCapabilityContract['name-code']; // name-code
      String name = appCapabilityContract['name']; // name
      YamlMap context = appCapabilityContract['context']; // context

      // pre-process information
      YamlList contextExpects = context['expects'] ?? YamlList(); // expects
      YamlMap contextReturns = context['returns']; // expects
      YamlList contextSteps = context['steps']; // expects

      // build from contract
      Function appCapability = LocalCapabilityComposer().fromContract(
          appName: appName,
          communityCode: communityCode,
          orgName: orgName,
          expects: contextExpects,
          returns: contextReturns,
          steps: contextSteps);

      // add each capability to map
      appLocalCapabilitiesMap[nameCode] = {
        'value': appCapability,
        'name': name
      };
    }

    // assign the map to gramx ethosapp local capabilities
    gramxAppsLocalCapabilities[communityCode] = {
      "$orgName-$appName": appLocalCapabilitiesMap
    };
  }

  _loadAppInteractionComponents(
      {required String appAssetPath,
      required int communityCode,
      required String orgName,
      required String appName}) async {
    print("_loadAppInteractionComponents");

    // fetch all the components contracts
    YamlList appComponents = await _getContractListFromAssetPath(
        assetPath: "$appAssetPath/ethosapp_interaction_components.yaml");

    // to store the components map locally
    Map<String, Map<String, dynamic>> appInteractionComponentsMap = {};

    // loop through all contracts
    for (int componentIndex = 0;
        componentIndex < appComponents.length;
        componentIndex++) {
      // get the component contract
      YamlMap appComponentContract = appComponents[componentIndex];

      // get information from contract
      String nameCode = appComponentContract['name-code']; // name-code
      String name = appComponentContract['name']; // name
      YamlMap component = appComponentContract['component']; // context

      // pre-process information
      String componentNameCode =
          component['name-code'] ?? ''; // component name-code

      print("Composing Component: $componentNameCode");

      // build from contract
      Widget appComponent = ComponentComposer().fromComponentContract(
          communityCode: communityCode,
          orgName: orgName,
          appName: appName,
          componentNameCode: componentNameCode,
          componentProperties: component);

      // add each capability to map
      appInteractionComponentsMap[nameCode] = {
        'value': appComponent,
        'name': name
      };
    }

    // assign the map to gramx ethosapp interaction components
    gramxAppsInteractionComponents[communityCode] = {
      "$orgName-$appName": appInteractionComponentsMap
    };

    print("------------------------------------------------------------------");
    print("gramxAppsInteractionComponents: $gramxAppsInteractionComponents");
    print("------------------------------------------------------------------");
  }

  _loadAppInteractionTiles(
      {required String appAssetPath,
      required int communityCode,
      required String orgName,
      required String appName}) async {
    print("_loadAppInteractionTiles");
    // fetch all the tile contracts
    YamlList appTiles = await _getContractListFromAssetPath(
        assetPath: "$appAssetPath/ethosapp_interaction_tiles.yaml");

    // to store the tile map locally
    Map<String, Map<String, dynamic>> appInteractionTilesMap = {};

    // loop through all contracts
    for (int tileIndex = 0; tileIndex < appTiles.length; tileIndex++) {
      // get the tile contract
      YamlMap appTileContract = appTiles[tileIndex];
      print("Tile Contract: $appTileContract");

      // get information from contract
      String nameCode = appTileContract['name-code']; // name-code
      String name = appTileContract['name']; // name
      String about = appTileContract['about']; // about
      YamlMap composition = appTileContract['composition']; // composition
      YamlList conditions = appTileContract['conditions'] ?? YamlList(); // conditions

      print("Composing Tile: $nameCode");
      print("Found conditions: $conditions");

      // pre-process information
      String compositionNameCode =
          composition['name-code'] ?? ''; // composition name-code

      // build from contract
      Widget composedComponent = ComponentComposer().fromComponentContract(
          communityCode: communityCode,
          orgName: orgName,
          appName: appName,
          componentNameCode: compositionNameCode,
          componentProperties: composition);

      Widget appTile = TileComposer().fromContract(
          communityCode: communityCode,
          orgName: orgName,
          appName: appName,
          conditions: conditions,
          composedComponent: composedComponent);

      // add each capability to map
      appInteractionTilesMap[nameCode] = {
        'value': appTile,
        'name': name,
        'about': about,
      };
      print("appInteractionTilesMap: $appInteractionTilesMap");
      print(
          "------------------------------------------------------------------");
      // assign the map to gramx ethosapp interaction tiles
      gramxAppsInteractionTiles[communityCode] = {
        "$orgName-$appName": appInteractionTilesMap
      };
      print("gramxAppsInteractionTiles: $gramxAppsInteractionTiles");
      print(
          "------------------------------------------------------------------");
    }
  }

  _loadCommunityOrganisationEthosappContracts(
      {required YamlMap organisationEthosappContract,
      required String communityAssetsPath,
      required int communityCode}) async {
    // fetch the orgName
    String orgName = organisationEthosappContract['organisation'];
    // build the orgAsset Path
    String orgAssetPath = "$communityAssetsPath/$orgName";
    // fetch all the apps
    YamlList orgApps = organisationEthosappContract['apps'];
    List<Map<String, dynamic>> orgAppsPaths = [];
    // loop through all the apps
    for (int appIndex = 0; appIndex < orgApps.length; appIndex++) {
      // fetch the app name
      String appName = orgApps[appIndex];
      String appAssetPath = '$orgAssetPath/$appName';
      orgAppsPaths.add({
        'name': appName,
        'assetPath': appAssetPath,
      });

      // load app local variables
      await _loadAppLocalVariables(
          appAssetPath: appAssetPath,
          appName: appName,
          communityCode: communityCode,
          orgName: orgName);

      // load app local capabilities
      await _loadAppLocalCapabilities(
          appAssetPath: appAssetPath,
          appName: appName,
          communityCode: communityCode,
          orgName: orgName);

      // load app interaction components
      await _loadAppInteractionComponents(
          appAssetPath: appAssetPath,
          communityCode: communityCode,
          orgName: orgName,
          appName: appName);

      // load app interaction tiles
      await _loadAppInteractionTiles(
          appAssetPath: appAssetPath,
          communityCode: communityCode,
          orgName: orgName,
          appName: appName);
      // fetch all the tile contracts
      // add each composed tile to map for usage later

      // load app interaction pages
      // fetch all the pages
      // add each page to map for usage later
    }
    // add the orgdata to assetsPath
    gramxCommunityAssetsPath[communityCode]!['organisations'].add(
        {'name': orgName, 'assetPath': orgAssetPath, 'apps': orgAppsPaths});
  }

  _loadCommunityEthosappContracts({required int communityCode}) async {
    print("_loadCommunityEthosappContracts");
    String communityAssetsPath =
        gramxCommunityAssetsPath[communityCode]!['assetPath'];
    // load communityEthosappsContract from asset
    final communityOrgEthosappsContractList =
        await _getContractListFromAssetPath(
            assetPath: "$communityAssetsPath/ethosapps.yaml");
    // fetch all the organisations from the contract
    gramxCommunityAssetsPath[communityCode]!['organisations'] = [];
    // loop through all orgs
    for (int orgIndex = 0;
        orgIndex < communityOrgEthosappsContractList.length;
        orgIndex++) {
      await _loadCommunityOrganisationEthosappContracts(
          organisationEthosappContract:
              communityOrgEthosappsContractList[orgIndex],
          communityAssetsPath: communityAssetsPath,
          communityCode: communityCode);
    }
  }

  fetchAllCommunityEthosapps() async {
    for (int recognizedCommunityCodeIndex = 0;
        recognizedCommunityCodeIndex < recognizedGramxCommunities.length;
        recognizedCommunityCodeIndex++) {
      // fetch the community code ethosapps asset
      int recognizedCommunityCode =
          recognizedGramxCommunities[recognizedCommunityCodeIndex];
      await _loadCommunityEthosappContracts(
          communityCode: recognizedCommunityCode);
      // gramxCommunityOrganisationAssetsPaths
      // fetch all the
    }

    print("------------------------------------------------------------------");
    print("gramxAppsLocalVariables: $gramxAppsLocalVariables");
    print("gramxAppsLocalCapabilities: $gramxAppsLocalCapabilities");
    print("gramxAppsInteractionComponents: $gramxAppsInteractionComponents");
    print("gramxAppsInteractionTiles: $gramxAppsInteractionTiles");
    print("------------------------------------------------------------------");
    // print("gramxCommunityAssetsPath: $gramxCommunityAssetsPath");

    // String gramx50assets = 'lib/community/apps/gramx/fifty/zero';
    // final assetData =
    //     await rootBundle.loadString("$gramx50assets/ethosapps.yaml");
    // print("assetData: ${assetData.toString()}");
    // YamlList orgsInGramx = loadYaml(assetData.toString());
    // for (int orgCount = 0; orgCount < orgsInGramx.length; orgCount++) {
    //   YamlList orgApps = orgsInGramx[orgCount]['apps'];
    //   for (int appCount = 0; appCount < orgApps.length; appCount++) {
    //     // fetch the ethosapp
    //     String appAssetPath =
    //         "$gramx50assets/${orgsInGramx[orgCount]['organisation']}/${orgApps[appCount]}";
    //     final orgEthosappData =
    //         await rootBundle.loadString("$appAssetPath/ethosapp.yaml");
    //     YamlMap orgEthosappContract = loadYaml(orgEthosappData.toString());
    //     print(orgEthosappContract);
    //     // fetch the first page
    //     String appContractFirstPageCodeName = orgEthosappContract['first-page'];
    //     // getAppPage(pageCodeName: <>); // todo: assign this to below
    //     Widget appContractFirstPage = SizedBox(); // todo: get this
    //     // compose the first page from already found pages, throw if not found
    //
    //   }
    // }
  }

  recognizeOrgAppPages() {}

/*
  *  AppFlow(
      index: 0,
      title: 'Conversations',
      code: 50,
      iconData: FeatherIcons.messageCircle,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: ConversationsHomePage(index: 1, containingFlowTitle: 'Conversations'),
    )
    * */

//  build the above app flow for each app
// in each community

// fetch the yaml file of ethosapps for each community x50
// map the asset of the ethosapps to ethosapp x50xethosapp
//

// provide when asked

}
