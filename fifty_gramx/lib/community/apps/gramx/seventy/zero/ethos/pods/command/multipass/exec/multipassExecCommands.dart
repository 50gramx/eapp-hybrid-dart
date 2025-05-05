import 'dart:convert';
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/microk8sCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/openvpn/openvpnCommands.dart';
import 'package:fifty_gramx/data/hostUserData.dart';

class MutlipassExecCommands {
  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for exec commands
  static String _baseCommandSpace = "";

  /// nested class for microk8s commands
  static late Microk8sCommands microk8s;

  /// nested class for microk8s commands
  static late OpenVPNCommands openVpn;

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
    openVpn = OpenVPNCommands(_baseCommandSpace);
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
        "sudo snap install microk8s --classic --channel=1.30/stable";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  updateIPTables() async {
    // build the command
    // ref: https://microk8s.io/docs/install-multipass
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

  installOvpn() async {
    // build the command
    String command = "${_baseCommandSpace}"
        "sudo apt install -y openvpn";
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }

  /// generates a new openvpn config
  ///
  /// stores the original in the control plane
  /// keeps a copy in worker pods vm
  generate() async {
    String _sshKeyAssetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/command/openvpn/openvpnSSH.key";
    String _sshKeyPath =
        await MultipassCommands.transfer.asset(_sshKeyAssetPath);

    if (Platform.isWindows) {
      MultipassCommands.exec.fixKeyFormatForUnix(_sshKeyPath);
    }

    String _controlPlaneUser = "ec2-user";
    String _controlPlaneIP = "13.200.238.161";

    String _clientName = await HostUserData().readHostUserNodeClient();

    String _chmodCommand = "${_baseCommandSpace} chmod 400 ${_sshKeyPath}";
    await SimpleCommandExecuter.run(_chmodCommand);

    String _generateCommand =
        "sudo MENU_OPTION=1 CLIENT=${_clientName} PASS=1 /home/ec2-user/openvpn-install.sh";
    String _sshCommandSpace =
        "${_baseCommandSpace} ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ${_sshKeyPath} ${_controlPlaneUser}@${_controlPlaneIP} ";

    String _sshGenerateCommand = "${_sshCommandSpace} ${_generateCommand}";
    await SimpleCommandExecuter.run(_sshGenerateCommand);

    // run the command

    String _scpCommand =
        "${_baseCommandSpace} sudo scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ${_sshKeyPath} ${_controlPlaneUser}@${_controlPlaneIP}:/home/${_controlPlaneUser}/${_clientName}.ovpn /etc/openvpn/client.conf";
    await SimpleCommandExecuter.run(_scpCommand);
  }

  fixKeyFormatForUnix(String vmAssetPath) async {
    await SimpleCommandExecuter.run(
        "${_baseCommandSpace} sudo apt-get install dos2unix");
    await SimpleCommandExecuter.run(
        "${_baseCommandSpace} dos2unix $vmAssetPath");
  }

  registerClientOVPN() async {
    // build the command

    // // Step - 4
    // # Connect to OpenVPN
    // sudo openvpn --config /etc/openvpn/client.conf &
    await OpenVPNCommands.config.connect();
    print("finished connecting");
  }

  Future<String> _getMasterSSHCommand(String masterCommand) async {
    String _sshKeyAssetPath =
        "lib/community/apps/gramx/seventy/zero/ethos/pods/command/openvpn/openvpnSSH.key";
    String _sshKeyPath =
        await MultipassCommands.transfer.asset(_sshKeyAssetPath);

    String _controlPlaneUser = "ec2-user";
    String _controlPlaneIP = "13.200.238.161";

    return "${_baseCommandSpace} ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ${_sshKeyPath} ${_controlPlaneUser}@${_controlPlaneIP} \'${masterCommand}\'";
  }

  joinMicrok8sWorkerNode() async {
    // Step - 5
    // # Get the join command from the control plane
    // JOIN_COMMAND=`$(ssh -i `$SSH_KEY ec2-user@`$CONTROL_PLANE_IP 'sudo microk8s add-node --format short')

    String _addNodeCommand =
        await _getMasterSSHCommand("microk8s add-node --format short");

    var joinCommands = await SimpleCommandExecuter.run(_addNodeCommand);

    String firstJoinCommand =
        LineSplitter.split(joinCommands.last.stdout.toString()).first;

    String cleanedJoinCommand = firstJoinCommand
        .replaceAll(
            RegExp(r'[\n\r]'), '') // Remove newlines and carriage returns
        .trim();
    String _joinCommand = "${_baseCommandSpace} ${cleanedJoinCommand} --worker";

    var joinResults = await SimpleCommandExecuter.run(_joinCommand);
  }

  leaveMicrok8sWorkerNode() async {
    var leaveResults =
        await SimpleCommandExecuter.run("${_baseCommandSpace} microk8s leave");
    var removeNodeFromMasterCommand = await _getMasterSSHCommand(
        "microk8s remove-node ${_vmName.toLowerCase()}");
    var removeNodeResults =
        await SimpleCommandExecuter.run(removeNodeFromMasterCommand);
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
