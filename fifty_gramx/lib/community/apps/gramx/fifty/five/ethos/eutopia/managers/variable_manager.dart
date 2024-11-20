import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/asset_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_capability_composer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/local/local_variable_composer.dart';
import 'package:yaml/yaml.dart';

// variable_manager.dart
class VariableManager {
  // Private constructor
  VariableManager._privateConstructor();

  // The single instance of the class
  static final VariableManager _instance =
      VariableManager._privateConstructor();

  // Access to the singleton instance
  static VariableManager get instance => _instance;

  /// contains the map of community code to local variables
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of variable code name <String> maps to
  ///       map of value of variable <dynamic>
  ///       map of name of variable <String>
  static Map<int, dynamic> gramxAppsLocalVariables = {};

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
  dynamic getGramxAppsLocalVariableValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String variableNameCode}) {
    return gramxAppsLocalVariables[communityCode]["$orgName-$appName"]
        [variableNameCode];
  }

  /// Adds a single app flow to the community specified by communityCode
  void addGramxAppsLocalVariableValue({
    required int communityCode,
    required String orgName,
    required String appName,
    required Map<String, Map<String, dynamic>> appLocalVariablesMap,
  }) {
    gramxAppsLocalVariables[communityCode] = {
      "$orgName-$appName": appLocalVariablesMap
    };
  }

  /// contains the map of community code to local capabilities
  /// of all gramx communities apps
  ///
  /// map of community code <int> maps to
  ///   map of app name <String> maps to
  ///     map of capability code name <String> maps to
  ///       map of value of capability <Function>
  ///       map of name of capability <String>
  static Map<int, dynamic> gramxAppsLocalCapabilities = {};

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
  dynamic getGramxAppsLocalCapabilityValue(
      {required int communityCode,
      required String orgName,
      required String appName,
      required String capabilityNameCode}) {
    dynamic capability = gramxAppsLocalCapabilities[communityCode]
        ["$orgName-$appName"][capabilityNameCode]['value'];
    return capability;
  }

  /// Adds a single app flow to the community specified by communityCode
  void addGramxAppsLocalCapabilityValue({
    required int communityCode,
    required String orgName,
    required String appName,
    required Map<String, Map<String, dynamic>> appLocalCapabilitiesMap,
  }) {
    gramxAppsLocalCapabilities[communityCode] = {
      "$orgName-$appName": appLocalCapabilitiesMap
    };
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
  Map<String, dynamic> _extractAppVariableData(YamlMap appVariableContract) {
    try {
      final String nameCode = appVariableContract['name-code'] ?? '';
      final String name = appVariableContract['name'] ?? '';
      final String type = appVariableContract['type'] ?? '';
      final YamlMap defaultValues = appVariableContract['default'] ?? YamlMap();

      if (nameCode.isEmpty || name.isEmpty || type.isEmpty) {
        throw Exception("Incomplete app variable contract data.");
      }

      final appVariable = LocalVariableComposer().fromVariableContract(
          variableTypeNameCode: type, defaultValues: defaultValues);

      return {
        'value': appVariable,
        'type': type,
        'name': name,
        'nameCode': nameCode,
      };
    } catch (e) {
      // Handle the exception here or rethrow it as needed
      throw Exception("Error extracting app variable data: $e");
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
  Future<void> loadAppLocalVariables({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    YamlList appVariables;

    try {
      final assetPath = '$appAssetPath/ethosapp_local_variables.yaml';
      appVariables = await AssetManager.instance
          .getContractListFromAssetPath(assetPath: assetPath);
    } catch (e) {
      // Handle any errors that occur during loading

      throw e;
    }

    final appLocalVariablesMap = <String, Map<String, dynamic>>{};

    await Future.forEach(appVariables, (dynamic appVariableContract) async {
      try {
        if (appVariableContract != null) {
          final appVariableData =
              _extractAppVariableData(appVariableContract as YamlMap);
          final String nameCode = appVariableData['nameCode']!;
          appLocalVariablesMap[nameCode] = appVariableData;
        } else {}
      } catch (e) {
        if (e.toString() ==
            "Exception: Incomplete app variable contract data.") {
          // Handle the specific exception here
        } else {
          // Handle the exception here or rethrow it as needed
          throw Exception(
              "Error loading local variable for app: $appName - $e");
        }
      }
    });

    addGramxAppsLocalVariableValue(
        communityCode: communityCode,
        orgName: orgName,
        appName: appName,
        appLocalVariablesMap: appLocalVariablesMap);
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
  Future<void> loadAppLocalCapabilities({
    required String appAssetPath,
    required int communityCode,
    required String orgName,
    required String appName,
  }) async {
    YamlList appCapabilities;

    try {
      final assetPath = "$appAssetPath/ethosapp_local_capabilities.yaml";
      appCapabilities = await AssetManager.instance
          .getContractListFromAssetPath(assetPath: assetPath);
    } catch (e) {
      // Handle any errors that occur during loading

      throw e;
    }

    final Map<String, Map<String, dynamic>> appLocalCapabilitiesMap = {};

    for (final appCapabilityContract in appCapabilities) {
      if (appCapabilityContract == null) {
        break;
      }
      try {
        final String nameCode = appCapabilityContract['name-code'] ?? '';
        final String name = appCapabilityContract['name'] ?? '';
        final context = appCapabilityContract['context'] ?? '';

        final contextExpects = context['expects'] ?? YamlList();
        final contextReturns = context['returns'] ?? YamlMap();
        final contextSteps = context['steps'] ?? YamlList();

        if (nameCode.isEmpty || name.isEmpty || context.isEmpty) {
          throw Exception("Incomplete app variable contract data.");
        }

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
      } catch (e) {
        // Handle the exception here or rethrow it as needed
        throw Exception("Error extracting app capability data: $e");
      }
    }

    VariableManager.instance.addGramxAppsLocalCapabilityValue(
        communityCode: communityCode,
        orgName: orgName,
        appName: appName,
        appLocalCapabilitiesMap: appLocalCapabilitiesMap);
  }
}
