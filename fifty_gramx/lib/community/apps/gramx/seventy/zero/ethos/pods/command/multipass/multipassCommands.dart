import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/delete/multipassDeleteCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/exec/multipassExecCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/launch/multipassLaunchCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/list/multipassListCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/start/multipassStartCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/stop/multipassStopCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/transfer/multipassTransferCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/version/multipassVersionCommands.dart';

// operates the commands for multipass package
//
// needs no initializer
class MultipassCommands {
  MultipassCommands._();

  /// contains the package name as per the base os
  static String _packageName = "";

  /// contains the package path as per the base os
  static String _packagePath = "";

  /// contains the virtual machine name
  static String _vmName = "";

  /// nested class for exec commands
  static late MutlipassExecCommands exec;

  /// nested class for launch commands
  static late MultipassLaunchCommands launch;

  /// nested class for start commands
  static late MultipassStartCommands start;

  /// nested class for stop commands
  static late MultipassStopCommands stop;

  /// nested class for list commands
  static late MultipassListCommands list;

  /// nested class for list commands
  static late MultipassTransferCommands transfer;

  /// nested class for delete commands
  static late MultipassDeleteCommands delete;

  /// nested class for version commands
  static late MultipassVersionCommands version;

  // initialises the class
  MultipassCommands() {
    // package name is same in all base os, so no checks needed
    _packageName = "multipass";

    // package path is defined as per the os
    if (Platform.isMacOS) {
      _packagePath = "/usr/local/bin/$_packageName";
    } else if (Platform.isWindows) {
      _packagePath = "$_packageName";
    } // todo: add packagePath for windows, linux flavours

    // vmName is same in all base os, so no checks needed
    _vmName = "ethos-pods-orchestrator-vm";

    // instantiate the exec commands
    exec = MutlipassExecCommands(_packagePath, _vmName);

    // instantiate the launch commands
    launch = MultipassLaunchCommands(_packagePath, _vmName);

    // instantiate the start commands
    start = MultipassStartCommands(_packagePath, _vmName);

    // instantiate the stop commands
    stop = MultipassStopCommands(_packagePath, _vmName);

    // instantiate the list commands
    list = MultipassListCommands(_packagePath, _vmName);

    // instantiate the transfer commands
    transfer = MultipassTransferCommands(_packagePath, _vmName);

    // instantiate the transfer commands
    delete = MultipassDeleteCommands(_packagePath, _vmName);

    // instantiate the version commands
    version = MultipassVersionCommands(_packagePath);
  }
}

// TODO: add below command and their executors
/**
 * alias
    aliases
    authenticate
    delete
    find
    get
    get (preview)
    help
    info
    mount
    networks
    purge
    recover
    set
    shell
    suspend
    umount
    unalias
 * */
