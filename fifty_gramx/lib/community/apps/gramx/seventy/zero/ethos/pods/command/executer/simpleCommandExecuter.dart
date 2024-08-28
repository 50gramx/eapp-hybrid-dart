// executes the commands in shell
//
// it is simple as it doesn't need privileged access
import 'dart:io';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:process_run/shell.dart';

class SimpleCommandExecuter {
  // singleton definition
  SimpleCommandExecuter._();

  SimpleCommandExecuter() {}

  /// contains the shell executer
  static Shell _shell = Shell(runInShell: true);

  /// Run one or multiple plain text command(s).
  ///
  /// Returns a list of executed command line results.
  static Future<List<ProcessResult>> run(String command) async {
    try {
      if (Platform.isWindows) {
        command = 'powershell -c ${shellArgument(command)}';
      }
      return (await _shell.run(command));
    } catch (e, st) {
      FirebaseCrashlytics.instance.recordError(e, st);
      print("ShellException, exception, stacktrace: ${e}, ${st}");
      return []; // returns an empty list
    }
  }
}
