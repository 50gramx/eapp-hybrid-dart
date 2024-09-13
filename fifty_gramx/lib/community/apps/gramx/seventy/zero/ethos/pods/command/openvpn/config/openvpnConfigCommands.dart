// operates the config commands for openvpn package
//
// needs [String] packagePath and [String] vmName as initializers
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:process_run/utils/process_result_extension.dart';

class OpenVPNConfigCommands {
  OpenVPNConfigCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the base command for config commands
  static String _baseCommandSpace = "";

  // initialises the class
  OpenVPNConfigCommands(String packagePath) {
    _packagePath = packagePath;
    _baseCommandSpace = "${_packagePath} --config ";
  }

  /// starts the orchestrator
  ///
  /// returns the status codes
  connect() async {
    // build the command

    String command = "${_baseCommandSpace}"
        "/etc/openvpn/client.conf &";
    // run the command
    String output = (await PrivilegedCommandExecuter.run(command)).outText;
    print("output: $output");
  }
}
