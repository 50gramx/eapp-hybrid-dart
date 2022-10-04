import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/microk8sCommands.dart';

class BrewUninstallCommands {
  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for install commands
  static String _baseCommandSpace = "";

  /// nested class for microk8s commands
  static late Microk8sCommands microk8s;

  // initialises the class
  BrewUninstallCommands(String packagePath) {
    // package path comes from the parent, so no checks needed
    _packagePath = packagePath;

    // base command is same for all os, so no checks needed
    _baseCommandSpace = "${_packagePath} uninstall ";
  }

  multipass() async {
    // build the command
    String command = "${_baseCommandSpace}"
        " multipass";
    // Run the command
    await SimpleCommandExecuter.run(command);
    await Future.delayed(Duration(seconds: 3));
  }
}
