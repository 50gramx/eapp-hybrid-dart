import 'dart:io';

import 'package:fifty_gramx/data/hostUserData.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:process_run/shell.dart';

/// executes the commands in shell
///
/// it is privileged as it needs privileged access
/// [String] hostUserPassword
///
/// it is needed to initialise privileged (initPrivileged) during app startup
class PrivilegedCommandExecuter {
  // singleton definition
  PrivilegedCommandExecuter._();

  /// contains the environment for the shell session
  static late ShellEnvironment _shellEnvironment;

  /// contains a single-subscription fake byte stdin stream that
  /// will emit the given bytes in a single chunk.
  static late Stream<List<int>> _stdinStream;

  /// contains the basic shell lines controller
  static late ShellLinesController _controller;

  /// contains the shell executer
  static late Shell _shell;

  /// initializes the class
  PrivilegedCommandExecuter() {}

  static initPrivileged() async {
    print("initPrivileged");
    String hostUserPassword = await HostUserData().readHostUserPassword();

    // creates the environment with 'sudo' access
    _shellEnvironment = ShellEnvironment()..aliases['sudo'] = 'sudo --stdin';

    // Create a fake stdin stream from the password variable
    _stdinStream = ByteStream.fromBytes(systemEncoding.encode(hostUserPassword))
        .asBroadcastStream();

    // controller to observe the stdout
    _controller = ShellLinesController();

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
    } catch (e, st) {
      FirebaseCrashlytics.instance.recordError(e, st);
      print("ShellException, exception, stacktrace: ${e}, ${st}");
      return []; // returns an empty list
    }
  }

  /// Run bash script from asset file
  ///
  /// Returns a list of executed command line results.
  static Future<List<ProcessResult>> runFromAssetScript(
      String assetFilePath) async {
    String tempFilePath = await getTemporaryFilePathForAssetFile(assetFilePath);
    var processResults =
        (await PrivilegedCommandExecuter.run("/bin/bash ${tempFilePath}"));
    (await PrivilegedCommandExecuter.run("rm ${tempFilePath}"));
    return processResults;
  }

  /// a fake sudo command test, used internally
  static _runSmokeTest() async {
    print("running smoke test");
    // warn: a fake sudo test to check the status of some random port
    if (Platform.isMacOS) {
      await run("sudo lsof -i:50501");
    } else if (Platform.isWindows) {
      await run("multipass version");
    } else if (Platform.isLinux) {
      await run("lsb_release -a");
    }
  }

  static Future<File> writeToFile(ByteData data, String path) {
    return File(path).writeAsBytes(data.buffer.asUint8List(
      data.offsetInBytes,
      data.lengthInBytes,
    ));
  }

  static Future<String> getTemporaryFilePathForAssetFile(
      String applicationAssetPath) async {
    // read the data from the asset file
    final assetData = await rootBundle.load(applicationAssetPath);
    // get the path of the temporary directory of the device
    final tempDirPath = (await getTemporaryDirectory()).path;
    // get the filename from the asset file path
    final fileName = applicationAssetPath.split("/").last;
    final tempFilePath = "$tempDirPath/$fileName";
    // write the assetData to the fileName in tempDirPath
    await writeToFile(assetData, tempFilePath);
    return tempFilePath;
  }
}
