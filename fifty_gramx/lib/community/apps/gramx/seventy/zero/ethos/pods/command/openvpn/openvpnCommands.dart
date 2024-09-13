import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/openvpn/config/openvpnConfigCommands.dart';

// operates the commands for openvpn package
//
// needs no initializer
class OpenVPNCommands {
  OpenVPNCommands._();

  /// contains the package name as per the base os
  static String _packageName = "";

  /// contains the package path as per the base os
  static String _packagePath = "";

  /// nested class for exec commands
  static late OpenVPNConfigCommands config;

  // initialises the class
  OpenVPNCommands(String packagePath) {
    // package name is same in all base os, so no checks needed
    _packageName = "sudo openvpn ";

    // package path is same in all base os, so no checks needed
    _packagePath = "${packagePath}${_packageName} ";

    // instantiate the exec commands
    config = OpenVPNConfigCommands(_packagePath);
  }
}

// TODO: add below command and their executors
/**
 * config
    
 * */
