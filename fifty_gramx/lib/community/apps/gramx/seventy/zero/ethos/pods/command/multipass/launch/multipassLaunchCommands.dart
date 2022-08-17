// operates the launch commands for multipass package
//
// needs [String] packagePath and [String] vmName as initializers
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';

class MultipassLaunchCommands {
  MultipassLaunchCommands._();

  /// contains the package path
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// contains the base command for launch commands
  static String _baseCommandSpace = "";

  // initialises the class
  MultipassLaunchCommands(String packagePath, String vmName) {
    _packagePath = packagePath;
    _vmName = vmName;
    _baseCommandSpace = "${_packagePath} launch ";
  }

  /// launches the vm
  ///
  /// needs [int] memoryInGB, [int] cpuCoreCount
  /// and [int] diskSpaceInGB as initializers
  ///
  /// returns the status codes
  vm(int memoryInGB, int cpuCoreCount, int diskSpaceInGB) async {
    // build the command
    String command = "${_baseCommandSpace}"
        "--name ${_vmName} "
        "--mem ${memoryInGB}G "
        "--cpus ${cpuCoreCount} "
        "--disk ${diskSpaceInGB}G";
    print("command: $command");
    // run the command
    await PrivilegedCommandExecuter.run(command);
  }
}
