import 'package:fifty_gramx/support/command/privilegedCommandExecuter.dart';

class MutlipassExecCommands {
  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for exec commands
  static String _baseCommandSpace = "";

  // initialises the class
  MutlipassExecCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} exec "
        "-v ${_vmName} "
        "-- ";
  }

  update() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "sudo apt-get update -y";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  upgrade() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "sudo apt-get upgrade -y";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  updateDNS() async {
    // build the command
    String command =
        """${_baseCommandSpace}bash -c 'echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null'""";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  installMicrok8s() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "sudo snap install microk8s --classic --channel=1.18/stable";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  updateIPTables() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "sudo iptables -P FORWARD ACCEPT";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  addMicrok8sToUserGroup() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "sudo usermod -a -G microk8s ubuntu";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  updateKubePermissions() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "sudo chown -f -R ubuntu ~/.kube";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }
}
