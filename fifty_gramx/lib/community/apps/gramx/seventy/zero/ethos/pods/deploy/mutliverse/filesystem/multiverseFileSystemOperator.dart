class MultiverseFileSystemOperator {
  // operates the file system
  //
  // returns status, 1101 -- pod was stopped, and is running now
  // returns status, 1102 -- pod was running, and is running now
  // returns status, 1103 -- pod was running, and is stopped now
  // returns status, 1104 -- pod was stopped, and is stopped now

  /// stores the status in memory
  static Map<String, dynamic> _multiverseFileSystem = {
    "podRunning": false,
  };

  // initialised this class
  MultiverseFileSystemOperator() {
    // check for pod status
    _multiverseFileSystem["podRunning"] = false;
  }

  bool isUp() {
    // returns true/false for pod running status
    return _multiverseFileSystem["podRunning"];
  }

  Future<bool> _checkPodStatus() async {
    return false;
  }

  // spins up the file system pod, if not running
  // returns status codes
  int spinUp() {
    // check if pod is not running
    if (this.isUp() == false) {
      // pod is not running
      // todo: write the code to spin up
      _multiverseFileSystem["podRunning"] = true;
      return 1101;
    } else {
      // pod is running, do nothing
      return 1102;
    }
  }

  // spins down the file system pod, if running
  // returns status codes
  int spinDown() {
    // check if pod is running
    if (this.isUp()) {
      // pod is running
      // todo: write the code to spin down
      _multiverseFileSystem["podRunning"] = false;
      return 1103;
    } else {
      // pod is not running, do nothing
      return 1104;
    }
  }
}
