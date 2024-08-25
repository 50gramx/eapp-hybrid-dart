import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/microk8sCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/data/hostUserData.dart';

class BrewInstallCommands {
  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for install commands
  static String _baseCommandSpace = "";

  /// nested class for microk8s commands
  static late Microk8sCommands microk8s;

  // initialises the class
  BrewInstallCommands(String packagePath) {
    // package path comes from the parent, so no checks needed
    _packagePath = packagePath;

    // base command is same for all os, so no checks needed
    _baseCommandSpace = "${_packagePath} install ";
  }

  multipass() async {
    if (!await MultipassCommands.version.isPresent()) {
      // build the command
      String command = "${_baseCommandSpace}"
          "multipass";
      // get the host user password
      String password = await HostUserData().readHostUserPassword();
      String assetPath =
          "lib/community/apps/gramx/seventy/zero/ethos/pods/configurations/orchestrator/setup/scripts/installMultipass.sh";
      var installPath =
          await PrivilegedCommandExecuter.getTemporaryFilePathForAssetFile(
              assetPath);
      // Update the spawn command in install script
      print("Update the spawn command in install script");
      await SimpleCommandExecuter.run(
          '''sed -e '4s#.*#spawn $command#' -i '' $installPath''');
      // Update password in install script
      print("Update password in install script");
      await SimpleCommandExecuter.run(
          '''sed -e '6s/.*/send "$password"/' -i '' $installPath''');
      // Run the install script
      print("will run installer");
      await SimpleCommandExecuter.run("/bin/bash $installPath");
      // Wait for the socket to up and running
      print("will start waiting for 10sec");
      await Future.delayed(Duration(seconds: 20));
    }
  }
}
