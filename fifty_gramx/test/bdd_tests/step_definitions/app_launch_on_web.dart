import 'package:flutter/foundation.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric<FlutterWorld> givenUserHasAppInstalled() {
  return given(
    'the user has the 50gramx app installed',
        (world) async {  if (kDebugMode) {
      print("givenUserHasAppInstalled");}
      // Add code here to simulate the app installation if needed
    },
  );
}

StepDefinitionGeneric<FlutterWorld> whenUserLaunchesAppOnWeb() {
  return when(
    'the user launches the app on the web',
        (world) async {
      // Add code here to simulate launching the app on the web
    },
  );
}

StepDefinitionGeneric<FlutterWorld> thenAppHomeScreen IsDisplayed() {
  return then(
    'the app\'s home screen should be displayed',
        (world) async {
      // Add code here to verify that the home screen is displayed
      // You can use FlutterDriver to interact with the app and make assertions
    },
  );
}
