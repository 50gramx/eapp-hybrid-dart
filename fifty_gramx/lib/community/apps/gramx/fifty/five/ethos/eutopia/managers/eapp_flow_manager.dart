// app_flow_manager.dart
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/asset_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/ui_component_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/variable_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/LeftNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/EutopiaLeftNavigationSectionalTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/appFlow.dart';
import 'package:fifty_gramx/environment.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:yaml/yaml.dart';

class AppFlowManager {
  // Private constructor
  AppFlowManager._privateConstructor();

  // The single instance of the class
  static final AppFlowManager _instance = AppFlowManager._privateConstructor();

  // Access to the singleton instance
  static AppFlowManager get instance => _instance;

  /// contains the list of app flows for each community
  static Map<int, List<AppFlow>> communityAppFlow = {};

  static List<LeftNavigationTab> navigationBarItems = [];

  static List<EutopiaLeftNavigationSectionalTab>
      eutopiaNavigationBarSectionalItems = [];

  static int dynamicPageIndex = 500000000;

  int reservePageIndex() {
    dynamicPageIndex += 1;
    return dynamicPageIndex;
  }

  List<AppFlow>? getAppFlow(int communityCode) {
    return communityAppFlow[communityCode];
  }

  void printTabItem(LeftNavigationTab tab) {
    print(
        "getNavigationBarItems, tab ${tab.leftNavigationBarSectionalItem.code}, ${tab.leftNavigationBarSectionalItem.label}, ${tab.leftNavigationBarSectionalItem.appName}, ${tab.leftNavigationBarSectionalItem.orgName}, ${tab.leftNavigationBarSectionalItem.collarNameCode}, ${tab.leftNavigationBarSectionalItem.pageNameCode}");
  }

  List<LeftNavigationTab>? getNavigationBarItems() {
    return navigationBarItems;
  }

  List<EutopiaLeftNavigationSectionalTab>?
      getEutopiaNavigationBarSectionalItems() {
    return eutopiaNavigationBarSectionalItems;
  }

  void sendOpenAppNotification({
    required int communityCode,
    required String orgName,
    required String appName,
  }) {
    // Find the index of the matching navigation bar item
    final index = navigationBarItems.indexWhere((tab) {
      final item = tab.leftNavigationBarSectionalItem;
      return item.orgName == orgName &&
          item.appName == appName &&
          item.code == communityCode;
    });

    if (index != -1) {
      // Item found, send the notification with the correct index
      NotificationsBloc.instance.newNotification(LocalNotification(
        "EthosAppFlowBob",
        {"subType": "Open eApp", "appSectionIndex": index},
      ));
    } else {
      print("No matching navigation item found for the given criteria.");
    }
  }

  void setAppFlow(int communityCode, List<AppFlow> appFlows) {
    communityAppFlow[communityCode] = appFlows;
  }

  void ensureCommunityAppFlow(int communityCode) {
    // Initialize the list if the communityCode doesn't exist
    if (!communityAppFlow.containsKey(communityCode)) {
      communityAppFlow[communityCode] = [];
    }
  }

  /// Adds a single app flow to the community specified by communityCode
  void addAppFlow(int communityCode, AppFlow appFlow) {
    ensureCommunityAppFlow(communityCode);
    // Add the app flow to the community's list
    communityAppFlow[communityCode]!.add(appFlow);
  }

  /// Finds the index of an app flow by its appIndex in the specified community.
  ///
  /// Returns the index of the app flow if found, otherwise returns -1.
  int findAppFlowIndex(int communityCode, int appIndex) {
    ensureCommunityAppFlow(communityCode);
    return communityAppFlow[communityCode]!
        .indexWhere((appFlow) => appFlow.index == appIndex);
  }

  /// Removes an app flow by its appIndex from the specified community.
  ///
  /// Returns the removed app flow if found, otherwise returns null.
  AppFlow? removeAppFlow(int communityCode, int appIndex) {
    ensureCommunityAppFlow(communityCode);
    final appFlowIndex = findAppFlowIndex(communityCode, appIndex);

    if (appFlowIndex != -1) {
      AppFlow removedAppFlow =
          communityAppFlow[communityCode]!.removeAt(appFlowIndex);

      return removedAppFlow;
    } else {
      return null;
    }
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
  LeftNavigationTab createLeftNavigationTab(AppFlow appFlow) {
    return LeftNavigationTab(
      leftNavigationBarSectionalItem: LeftNavigationBarSectionalItem(
        orgName: appFlow.orgName,
        appName: appFlow.appName,
        collarNameCode: appFlow.collarNameCode,
        pageNameCode: appFlow.pageNameCode,
        identifier: appFlow.identifier,
        label: appFlow.title,
        code: appFlow.code,
        icon: appFlow.iconData,
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
  Future<void> loadCommunityOrganisationEthosappContracts({
    required YamlMap organisationEthosappContract,
    required String communityAssetsPath,
    required int communityCode,
  }) async {
    final orgName = organisationEthosappContract['organisation'];
    final orgAssetPath = "$communityAssetsPath/$orgName";
    final orgApps = organisationEthosappContract['apps'] as YamlList;
    final List<Map<String, dynamic>> orgAppsPaths = [];
    final currentEnv = await Environment.current();

    // Log the number of apps being loaded for the organization

    for (final appName in orgApps) {
      if (currentEnv != "com.50gramx") {
        if (currentEnv != "com.50gramx.$communityCode.$orgName.$appName") {
          continue;
        }
      }

      // will skip if the flavor is not com.50gramx
      // will only build for the flavor org name, community code, and app name

      final appAssetPath = '$orgAssetPath/$appName';
      AppFlow appFlow;

      try {
        // Load app assets sequentially

        await loadAppAssets(
          appAssetPath: appAssetPath,
          appName: appName,
          communityCode: communityCode,
          orgName: orgName,
        );

        orgAppsPaths.add({
          'name': appName,
          'assetPath': appAssetPath,
        });

        appFlow = EappFlow().getAppFlow(communityCode, appName);
        addAppFlow(communityCode, appFlow);

        final leftNavigationTab = createLeftNavigationTab(appFlow);
        navigationBarItems.add(leftNavigationTab);

        final eutopiaTab = _createEutopiaTab(leftNavigationTab);
        eutopiaNavigationBarSectionalItems.add(eutopiaTab);

        NotificationsBloc.instance.newNotification(
            LocalNotification("EthosAppFlowBob", {"subType": "Loaded eApp"}));
      } catch (e) {
        // Handle any errors that occur during loading

        break;
      }
    }

    try {
      // Attempt to access the nested properties

      final orgData = AssetManager.instance
          .getCommunityAssetsPath(communityCode)?['organisations'];
      if (orgData != null) {
        final orgData = {
          'name': orgName,
          'assetPath': orgAssetPath,
          'apps': orgAppsPaths,
        };
        AssetManager.instance.updateCommunityAssetsPath(communityCode, orgData);
      } else {
        // Handle the case where 'organisations' is null

        // TODO: handle this with notifications maybe
      }
    } catch (e) {
      // Handle any exceptions that might occur

      // TODO: handle this with notifications maybe
    }
    //
    // // add the orgdata to assetsPath
    // gramxCommunityAssetsPath[communityCode]!['organisations'].add(
    //     {'name': orgName, 'assetPath': orgAssetPath, 'apps': orgAppsPaths});
  }

  Future<void> _loadWithErrorHandling(
      Future<void> Function() loadFunction,
      String assetType,
      String appName,
      String orgName,
      int communityCode) async {
    try {
      await loadFunction();
    } catch (e) {
      throw e;
    }
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
  Future<void> loadAppAssets({
    required String appAssetPath,
    required String appName,
    required int communityCode,
    required String orgName,
  }) async {
    await _loadWithErrorHandling(
        () => VariableManager.instance.loadAppLocalVariables(
              appAssetPath: appAssetPath,
              appName: appName,
              communityCode: communityCode,
              orgName: orgName,
            ),
        "App local variables",
        appName,
        orgName,
        communityCode);
    await _loadWithErrorHandling(
        () => VariableManager.instance.loadAppLocalCapabilities(
              appAssetPath: appAssetPath,
              appName: appName,
              communityCode: communityCode,
              orgName: orgName,
            ),
        "App local capabilities",
        appName,
        orgName,
        communityCode);
    await _loadWithErrorHandling(
        () => UIComponentManager.instance.loadAppInteractionComponents(
              appAssetPath: appAssetPath,
              communityCode: communityCode,
              orgName: orgName,
              appName: appName,
            ),
        "App interaction components",
        appName,
        orgName,
        communityCode);
    await _loadWithErrorHandling(
        () => UIComponentManager.instance.loadAppInteractionTiles(
              appAssetPath: appAssetPath,
              communityCode: communityCode,
              orgName: orgName,
              appName: appName,
            ),
        "App interaction tiles",
        appName,
        orgName,
        communityCode);

    // Optionally, Load app interaction pages if necessary
    // Implementation depending on your application's requirements
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
      final contracts = await AssetManager.instance
          .getContractListFromAssetPath(
              assetPath: "$communityAssetsPath/ethosapps.yaml");
      return contracts;
    } catch (e) {
      // Handle the error as per your requirement. You can throw an exception here or return a default value.
      return []; // Return an empty list as a fallback.
    }
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
      final assetsPath = AssetManager.instance
          .getCommunityAssetsPath(communityCode)!['assetPath'];
      if (assetsPath != null) {
        return assetsPath;
      } else {
        // You can throw an exception here if needed or return a default value.
        return ''; // Return an empty string as a fallback.
      }
    } catch (e) {
      // You can throw an exception here or handle it as per your requirement.
      return ''; // Return an empty string as a fallback.
    }
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
  Future<void> loadCommunityEthosappContracts(
      {required int communityCode}) async {
    ensureCommunityAppFlow(communityCode);
    String communityAssetsPath;

    try {
      communityAssetsPath = _getCommunityAssetsPath(communityCode);
    } catch (e) {
      return; // Exit the function if assets path is not found.
    }

    List ethosappContracts;

    try {
      ethosappContracts = await _fetchEthosappContracts(communityAssetsPath);
    } catch (e) {
      return; // Exit the function if ethosappContracts are not fetched.
    }

    await Future.wait(
      ethosappContracts.map(
        (contract) => loadCommunityOrganisationEthosappContracts(
          communityAssetsPath: communityAssetsPath,
          communityCode: communityCode,
          organisationEthosappContract: contract,
        ),
      ),
    );
  }

  bool isAppFlowExists(
      int communityCode,
      String domainIdentifier,
      String collarNameCode,
      String pageNameCode,
      Map<String, String> pageIdentifiers) {
    final List<AppFlow>? appFlows = getAppFlow(communityCode);

    if (appFlows == null) {
      return false; // No app flows for this community code
    }

    return appFlows.any((appFlow) {
      // Check for static attribute matches
      if (appFlow.collarNameCode != collarNameCode ||
          appFlow.pageNameCode != pageNameCode ||
          appFlow.identifier != domainIdentifier) {
        return false;
      }

      // Check for dynamic pageIdentifiers matches (keys and values)
      if (appFlow.pageIdentifiers.length != pageIdentifiers.length) {
        return false; // Mismatch in number of keys
      }

      for (var key in pageIdentifiers.keys) {
        if (!appFlow.pageIdentifiers.containsKey(key) ||
            appFlow.pageIdentifiers[key] != pageIdentifiers[key]) {
          return false; // Key-value pair mismatch
        }
      }

      return true; // All keys and values match
    });
  }

  /// Dynamically loads an app on-the-go based on provided app details.
  ///
  /// Params:
  /// - [appName]: The name of the app to load.
  /// - [orgName]: The organization name associated with the app.
  /// - [communityCode]: The code representing the community.
  /// - [appIndex]: The index of the app to load.
  Future<void> loadAppOnTheGo({
    required String appName,
    required String orgName,
    required int communityCode,
    required int appIndex,
    String collarNameCode = "DC5000000000",
    String pageNameCode = "EAIP1001",
    String domainIdentifier = "",
    Map<String, String> pageIdentifiers = const {},
  }) async {
    print("loadAppOnTheGo: recieved");
    String communityAssetsPath = _getCommunityAssetsPath(communityCode);
    final orgAssetPath = "$communityAssetsPath/$orgName";
    final appAssetPath = '$orgAssetPath/$appName';

    print("loadAppOnTheGo: assets loaded");

    // Check if communityCode exists in communityAppFlow, if not add it
    ensureCommunityAppFlow(communityCode);

    // Check if app flow already exists for the given appName and communityCode
    // bool appFlowExists =
    //     getAppFlow(communityCode)!.any((appFlow) => appFlow.index == appIndex);

    bool appFlowExists = isAppFlowExists(communityCode, domainIdentifier,
        collarNameCode, pageNameCode, pageIdentifiers);

    print("loadAppOnTheGo: appFlowExists, ${appFlowExists}");
    if (appFlowExists) {
      return; // Exit early if app flow is already added
    }

    // Load app assets and setup app flow dynamically
    try {
      await loadAppAssets(
        appAssetPath: appAssetPath,
        appName: appName,
        communityCode: communityCode,
        orgName: orgName,
      );

      AppFlow appFlow = EappFlow().getAppFlow(communityCode, appName,
          collarNameCode: collarNameCode,
          pageNameCode: pageNameCode,
          domainIdentifier: domainIdentifier,
          pageIdentifiers: pageIdentifiers);
      print(
          "loadAppOnTheGo: Loading app assets, appFlow, ${appFlow.appName}, ${appFlow.index},  ${appFlow.firstPage},");
      addAppFlow(communityCode, appFlow);

      LeftNavigationTab leftNavigationTab = createLeftNavigationTab(appFlow);

      navigationBarItems.add(leftNavigationTab);

      EutopiaLeftNavigationSectionalTab eutopiaTab =
          _createEutopiaTab(leftNavigationTab);

      eutopiaNavigationBarSectionalItems.add(eutopiaTab);

      NotificationsBloc.instance.newNotification(
          LocalNotification("EthosAppFlowBob", {"subType": "Loaded eApp"}));
    } catch (e) {
      print(
          "loadAppOnTheGo: Loading app assets and seting app flow dynamically failed, ${e}");
    }
  }

  /// Dynamically unloads an app on-the-go based on provided app details.
  ///
  /// Params:
  /// - [communityCode]: The code representing the community.
  /// - [appIndex]: The index of the app to unload.
  Future<void> unloadAppOnTheGo({
    required int communityCode,
    required int appIndex,
  }) async {
    try {
      // Check if the communityCode exists in communityAppFlow
      if (getAppFlow(communityCode) == null) {
        return; // Exit early if community code does not exist
      }

      // Find the app flow by appIndex
      int appFlowIndex = findAppFlowIndex(communityCode, appIndex);

      if (appFlowIndex == -1) {
        return; // Exit early if app flow does not exist
      }

      // Remove the app flow
      AppFlow? removedAppFlow = removeAppFlow(communityCode, appIndex);
      if (removedAppFlow != null) {
        // Find and remove the corresponding left navigation tab
        final leftNavigationTabIndex = navigationBarItems.indexWhere((tab) =>
            tab.leftNavigationBarSectionalItem.code == removedAppFlow.code);

        if (leftNavigationTabIndex != -1) {
          navigationBarItems.removeAt(leftNavigationTabIndex);
        }

        // Find and remove the corresponding Eutopia tab
        final eutopiaTabIndex = eutopiaNavigationBarSectionalItems.indexWhere(
            (tab) =>
                tab.leftNavigationBarSectionalItem.code == removedAppFlow.code);

        if (eutopiaTabIndex != -1) {
          eutopiaNavigationBarSectionalItems.removeAt(eutopiaTabIndex);
        }
      } else {}

      NotificationsBloc.instance.newNotification(
          LocalNotification("EthosAppFlowBob", {"subType": "Loaded eApp"}));
    } catch (e) {
      // Handle error appropriately
    }
  }
}
