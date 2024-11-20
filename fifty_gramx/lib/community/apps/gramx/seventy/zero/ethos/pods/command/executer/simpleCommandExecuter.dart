// executes the commands in shell
//
// it is simple as it doesn't need privileged access
import 'dart:async';
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/executor_logger.dart';
import 'package:fifty_gramx/firebase_configurations.dart';
import 'package:process_run/shell.dart';

class SimpleCommandExecuter {
  // singleton definition
  SimpleCommandExecuter._();

  SimpleCommandExecuter() {}

  /// contains the shell executer
  static late Shell _shell;

  static late ShellLinesController _controller;

  static Future<void> init() async {
    // Initialize ShellLinesController
    _controller = ShellLinesController();

    // Create a new Shell instance with the controller
    _shell = Shell(
      stdout: _controller.sink,
      stderr: _controller.sink,
      runInShell: true,
    );

    // Listen for controller events
    _controller.stream.listen((event) {
      // Handle output
      // Log or process the output as needed
      ExecutorLogger().logOut(event);
    });
  }

  /// Run one or multiple plain text command(s).
  ///
  /// Returns a list of executed command line results.
  static Future<List<ProcessResult>> run(String command) async {
    try {
      if (Platform.isWindows) {
        command = 'powershell -c ${shellArgument(command)}';
      }
      final result = await _shell.run(command);
      return result;
    } catch (e, st) {
      print("error: $e, $st");
      crashlyticsRecordError(e, st);
      return [];
    }
  }

  /// Run one or multiple plain text command(s).
  ///
  /// Returns a list of executed command line results.
  static Future<List<ProcessResult>> file(String filePath) async {
    try {
      String command = "./${filePath}";
      if (Platform.isWindows) {
        command = "powershell -executionpolicy bypass -c ${filePath}";
      }
      final result = (await _shell.run(command));
      return result;
    } catch (e, st) {
      crashlyticsRecordError(e, st);
      Error.throwWithStackTrace(e, st);
    }
  }
}
