import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import 'step_definitions/app_launch_on_web.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [
      'C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\test\bdd_tests\app_launch_on_web.feature', // Path to your .feature files
    ]
    ..reporters = [ProgressReporter()]
    ..stepDefinitions = [givenUserHasAppInstalled(), whenUserLaunchesAppOnWeb()]
    ..targetAppPath =
        "C:/Users/amitk/StudioProjects/eapp-hybrid-dart/fifty_gramx/lib/main.dart"
    ..targetDeviceId = 'edge';

  return GherkinRunner().execute(config);
}
