import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/microk8sCommands.dart';

class MutlipassExecCommands {
  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for exec commands
  static String _baseCommandSpace = "";

  /// nested class for microk8s commands
  static late Microk8sCommands microk8s;

  // initialises the class
  MutlipassExecCommands(String packagePath, String vmName) {
    // package path comes from the parent, so no checks needed
    _packagePath = packagePath;

    // vm name comes from the parent, so no checks needed
    _vmName = vmName;

    // base command is same for all os, so no checks needed
    _baseCommandSpace = "${_packagePath} exec "
        "-v ${_vmName} "
        "-- ";

    microk8s = Microk8sCommands(_baseCommandSpace);
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
        "sudo snap install microk8s --classic --channel=1.21/stable";
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
        "sudo chown -f -R ubuntu /home/ubuntu/.kube";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  /// deletes the asset from the vm at a given
  /// vm's asset path as String
  removeAsset(String vmAssetPath) async {
    // build the command
    String command = "${_baseCommandSpace}"
        "rm $vmAssetPath";
    // run the command
    await SimpleCommandExecuter.run(command);
  }
}
