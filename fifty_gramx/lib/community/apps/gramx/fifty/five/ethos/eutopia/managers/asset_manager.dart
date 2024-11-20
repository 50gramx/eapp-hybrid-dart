import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/constants.dart';
import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

// asset_manager.dart
class AssetManager {
  // Private constructor
  AssetManager._privateConstructor();

  // The single instance of the class
  static final AssetManager _instance = AssetManager._privateConstructor();

  // Access to the singleton instance
  static AssetManager get instance => _instance;

  /// contains the assets path to gramx
  static String gramxAssetsPath = 'lib/community/apps/gramx';

  /// contains the map of community code to asset paths to all gramx community
  static Map<int, Map<String, dynamic>> gramxCommunityAssetsPath = {};

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
  Map<String, dynamic>? getCommunityAssetsPath(int communityCode) {
    return gramxCommunityAssetsPath[communityCode];
  }

  /// Updates the community assets path for a specific community code.
  ///
  /// Adds the organization data to the 'organisations' list within the
  /// gramxCommunityAssetsPath for the specified community code.
  void updateCommunityAssetsPath(
      int communityCode, Map<String, dynamic> orgData) {
    // Check if the community code exists
    if (gramxCommunityAssetsPath.containsKey(communityCode)) {
      // Check if 'organisations' key exists, create if it doesn't
      if (gramxCommunityAssetsPath[communityCode]!['organisations'] == null) {
        gramxCommunityAssetsPath[communityCode]!['organisations'] = [];
      }
      // Add the new organization data
      gramxCommunityAssetsPath[communityCode]!['organisations'].add(orgData);
    } else {
      // If the community code doesn't exist, create a new entry

      gramxCommunityAssetsPath[communityCode] = {
        'organisations': [orgData], // Initialize with the orgData
      };
    }
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
  Future<YamlList> getContractListFromAssetPath(
      {required String assetPath}) async {
    try {
      final dynamic assetData = await rootBundle.loadString(assetPath);

      if (assetData != null) {
        final dynamic appVariables = loadYaml(assetData.toString());

        if (appVariables is YamlList) {
          // Handle the case where it's a YamlList
          return (appVariables as YamlList);
        } else {
          throw Exception("Error data from asset is not list: $assetPath");
        }
      } else {
        throw Exception("Error no data from asset: $assetPath");
      }
    } catch (e) {
      // Handle any errors that occur during loading or parsing

      throw Exception("Error loading asset from path: $assetPath. Error: $e");
    }
  }
}
