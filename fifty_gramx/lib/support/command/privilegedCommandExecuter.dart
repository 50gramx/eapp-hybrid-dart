import 'dart:io';

import 'package:fifty_gramx/data/hostUserData.dart';
import 'package:http/http.dart';
import 'package:process_run/shell.dart';

/// executes the commands in shell
///
/// it is privileged as it needs privileged access
/// [String] hostUserPassword
class PrivilegedCommandExecuter {
  // warn: remember to initPrivileged in main.dart

  // singleton definition
  PrivilegedCommandExecuter._();

  /// contains the environment for the shell session
  // creates the environment with `sudo` access
  static ShellEnvironment _shellEnvironment = ShellEnvironment()
    ..aliases['sudo'] = 'sudo --stdin';

  /// contains a single-subscription fake byte stdin stream that
  /// will emit the given bytes in a single chunk.
  static late Stream<List<int>> _stdinStream;

  /// contains the basic shell lines controller
  static ShellLinesController _controller = ShellLinesController();

  /// contains the shell executer
  static late Shell _shell;

  /// initializes the class
  PrivilegedCommandExecuter() {}

  static initPrivileged() async {
    String hostUserPassword = await HostUserData().readHostUserPassword();

    // Create a fake stdin stream from the password variable
    _stdinStream = ByteStream.fromBytes(systemEncoding.encode(hostUserPassword))
        .asBroadcastStream();

    // invokes the shells with controller, stdin, and environment
    _shell = Shell(
        stdin: _stdinStream,
        stdout: _controller.sink,
        verbose: true,
        runInShell: true,
        environment: _shellEnvironment);

    // listen for controller events
    _controller.stream.listen((event) {
      // Handle output
      // todo: make these events visible somewhere in the UI
      // ...
      // If needed kill the shell
      print(event);
    });

    // runs the smoke test to avoid unexpected results from the next run
    _runSmokeTest();
  }

  /// Run one or multiple plain text command(s).
  ///
  /// Returns a list of executed command line results.
  static Future<List<ProcessResult>> run(String command) async {
    try {
      return (await _shell.run(command));
    } catch (e) {
      print("Found Exception: $e");
      return []; // returns an empty list
    }
  }

  /// a fake sudo command test, used internally
  static _runSmokeTest() async {
    // warn: a fake sudo test to check the status of some random port
    await run("sudo lsof -i:50501");
  }
}
