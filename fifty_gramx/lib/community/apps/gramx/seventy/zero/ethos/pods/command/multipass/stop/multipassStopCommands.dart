// operates the stop commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:process_run/utils/process_result_extension.dart';

class MultipassStopCommands {
  MultipassStopCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for launch commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassStopCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} stop ";
  }

  /// starts the orchestrator
  ///
  /// returns the status codes
  orchestrator() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "${_vmName}";
    // run the command
    String output = (await PrivilegedCommandExecuter.run(command)).outText;
    print("orchestrator.stop: $output");
  }
}
