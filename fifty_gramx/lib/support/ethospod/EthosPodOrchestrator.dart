import 'package:process_run/shell.dart';

class EthosPodOrchestrator {

  // Static declarations here

  // Function definitions here
  Future<String> getMultipassVersion(String inputCommand) async {
    // invoking shell
    var shell = Shell();
    try {
      // running few things on shell
      var version = await shell.run(inputCommand);
      var multipassVersionText = (version).outText;
      if (multipassVersionText.length > 0) {
        return LineSplitter.split(multipassVersionText)
            .first
            .substring(12)
            .replaceFirst("+mac", '');
      } else {
        return "NA";
      }
    } catch (e) {
      print("found exception --> $e");
      return "NA";
    }
  }

  testGetVersion() {
    var results = getMultipassVersion("multipass version");
  }
}