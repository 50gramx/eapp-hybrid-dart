import 'dart:async';

class ExecutorLogger {
  static final ExecutorLogger _instance = ExecutorLogger._internal();

  factory ExecutorLogger() {
    return _instance;
  }

  ExecutorLogger._internal();

  final StreamController<String> _logController =
      StreamController<String>.broadcast();

  Stream<String> get logStream => _logController.stream;

  void log(String message) {
    _logController.sink.add(message);
  }

  void logOut(String message) {
    final runId = DateTime.now().millisecondsSinceEpoch;
    log('[$runId] stdout: $message');
  }

  void logErr(String message) {
    final runId = DateTime.now().millisecondsSinceEpoch;
    log('[$runId] stderr: $message');
  }

  void dispose() {
    _logController.close();
  }
}
