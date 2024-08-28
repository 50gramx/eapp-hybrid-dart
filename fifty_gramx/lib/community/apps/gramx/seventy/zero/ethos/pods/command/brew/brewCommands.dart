import 'dart:convert';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/install/brewInstallCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/uninstall/brewUninstallCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/data/hostUserData.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:process_run/shell.dart';

// operates the commands for brew package
//
// needs no initializers
// it is needed to initialise brew during app startup
class BrewCommands {
  // singleton definition
  BrewCommands._();

  /// contains the package name as per the base os
  static String _packageName = "";

  /// contains the package path as per the base os
  static String _packagePath = "";

  /// nested class for install commands
  static late BrewInstallCommands install;

  /// nested class for uninstall commands
  static late BrewUninstallCommands uninstall;

  // initialises the class
  // warn: initBrew initialised the class during startup, if defined
  BrewCommands() {}

  static initBrew() async {
    // package name is same in all base os, so no checks needed
    _packageName = "brew";

    // package path is defined as per the os
    // since the path of the package, depends on the device architecture
    // we need to get the arch and set the package path respectively
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    var macOsInfo = await deviceInfo.macOsInfo;
    FirebaseCrashlytics.instance
        .recordFlutterError(FlutterErrorDetails(exception: macOsInfo));
    var brewExectutable = whichSync('brew');
    _packagePath = brewExectutable!;

    install = BrewInstallCommands(_packagePath);
    uninstall = BrewUninstallCommands(_packagePath);
  }

  static Future<String> setupBrew() async {
    // Before setting up lets check if available on host machine or not,
    // If available, we'll skip setup
    var preSetupVersion = await BrewCommands.version();
    if (preSetupVersion != "NA") {
      return "Already available, skipping the setup";
    }
    var assetPath =
        await PrivilegedCommandExecuter.getTemporaryFilePathForAssetFile(
            "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/orchestrator/setup/scripts/homebrew.sh");
    var installPath =
        await PrivilegedCommandExecuter.getTemporaryFilePathForAssetFile(
            "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/orchestrator/setup/scripts/install.sh");
    // get the host user password
    String password = await HostUserData().readHostUserPassword();
    // Build the spawn command
    var spawnCommand = "spawn /bin/bash $assetPath";
    // Update the spawn command in install script
    await SimpleCommandExecuter.run(
        '''sed -e '4s#.*#$spawnCommand#' -i '' $installPath''');
    // Update password in install script
    await SimpleCommandExecuter.run(
        '''sed -e '6s/.*/send "$password"/' -i '' $installPath''');
    // Run the install script
    await SimpleCommandExecuter.run("/bin/bash $installPath");
    // Checking if brew is successfully installed
    var postSetupVersion = await BrewCommands.version();
    if (postSetupVersion == "NA") {
      return "Something went wrong";
    } else {
      // since the homebrew setup is done
      // let's also install cask needed for multipass
      await SimpleCommandExecuter.run("$_packagePath install cask");
      return postSetupVersion;
    }
  }

  static Future<String> version() async {
    // returns the version of brew if available
    // else, returns NA
    var version = await SimpleCommandExecuter.run("$_packagePath -v");
    if (version.outText.length > 0) {
      if (version.outText.contains("Homebrew")) {
        return LineSplitter.split(version.outText).first.substring(9);
      } else {
        return "NA";
      }
    } else {
      return "NA";
    }
  }
}

// TODO: add below command and their executors
/**
 * casks
 * search
 * cleanup
 * */
