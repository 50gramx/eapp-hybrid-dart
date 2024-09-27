// operates the transfer commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';

class MultipassTransferCommands {
  MultipassTransferCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for launch commands
  static String _baseCommandSpace = "";

  /// contains the base path for transfer commands
  static String _vmBasePath = "/home/ubuntu";

  // initialises the class
  MultipassTransferCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} transfer ";
  }

  /// transfers the asset from host machine to vm
  ///
  /// returns the vm asset path
  /// which can be generally used to delete asset after use from vm
  Future<String> asset(String assetPath) async {
    // get the temporary asset path in host machine
    String temporaryAssetPath =
        await PrivilegedCommandExecuter.getTemporaryFilePathForAssetFile(
            assetPath);
    // build the command
    String command = "${_baseCommandSpace}"
        "$temporaryAssetPath ${_vmName}:.";
    // run the command
    await PrivilegedCommandExecuter.run(command);
    // build the asset path in vm
    String fileSeperator = "/";
    if (Platform.isWindows) {
      fileSeperator = "\\";
    }
    String vmAssetPath =
        "${_vmBasePath}/${temporaryAssetPath.split(fileSeperator).last}";
    // return the vm asset path
    return vmAssetPath;
  }
}
