import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/exec/multipassExecCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/launch/multipassLaunchCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/start/multipassStartCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/stop/multipassStopCommands.dart';

// operates the commands for multipass package
//
// needs no initializers
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

  // initialises the class
  MultipassCommands() {
    // package name is same in all base os, so no checks needed
    _packageName = "multipass";

    // package path is defined as per the os
    if (Platform.isMacOS) {
      _packagePath = "/usr/local/bin/$_packageName";
    } // todo: add packagePath for windows, linux flavours

    // vmName is same in all base os, so no checks needed
    _vmName = "ethos-pods-orchestrator-vm";

    exec = MutlipassExecCommands(_packagePath, _vmName);
    launch = MultipassLaunchCommands(_packagePath, _vmName);
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
    list
    mount
    networks
    purge
    recover
    set
    shell
    suspend
    transfer
    umount
    unalias
    version
 * */
