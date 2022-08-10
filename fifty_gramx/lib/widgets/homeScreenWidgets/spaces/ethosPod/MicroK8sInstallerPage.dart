import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/widgets/components/NeuSlider/NeuSliderWidget.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/TextField/PasswordTextField.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:process_run/shell.dart';

/// This is the stateful widget that the main application instantiates.
class MicroK8sInstallerPage extends StatefulWidget {
  const MicroK8sInstallerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MicroK8sInstallerPage> createState() => _MicroK8sInstallerPageState();
}

class _MicroK8sInstallerPageState extends State<MicroK8sInstallerPage> {
  String installEvents = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "MicroK8s Installer",
          actionLabelText: "",
          isBackEnabled: true,
          isActionEnabled: false,
          trailingButtonCallback: () {},
          onStretchTriggerCallback: () {},
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child:
                    FormInfoText("The lightweight Kubernetes").build(context)),
            Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
                child: PasswordTextField(
                    hintText: "User's Password",
                    nameTextFieldController: userPasswordTextFieldController)),
            NeuSliderWidget(),
            Visibility(
              visible: isInstalling,
              child: AppProgressIndeterminateWidget(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: ActionNeuButton(
                  buttonTitle: "Install",
                  isPrimaryButton: true,
                  isPrimaryButtonDisabled: (isInstalling || !isPasswordGiven),
                  buttonActionOnPressed: () {
                    installHomebrew();
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: Text("$installEvents"),
            ),
            SizedBox(height: 32),
          ]),
        )
      ]),
    );
  }

  bool isInstalling = false;
  bool isPasswordGiven = false;

  TextEditingController userPasswordTextFieldController =
      TextEditingController();
  var userPassword = "";

  updateUserPassword() {
    userPassword = userPasswordTextFieldController.text;
    if (userPassword.length > 3) {
      setState(() {
        isPasswordGiven = true;
      });
    } else {
      isPasswordGiven = false;
    }
  }

  installHomebrew() async {
    var env = ShellEnvironment()..aliases['sudo'] = 'sudo --stdin';

    // Create a fake stdin stream from the password variable
    var stdin = ByteStream.fromBytes(systemEncoding.encode(userPassword))
        .asBroadcastStream();

    var controller = ShellLinesController();

    var shell = Shell(
        stdin: stdin,
        stdout: controller.sink,
        verbose: true,
        runInShell: true,
        environment: env);
    controller.stream.listen((event) {
      // Handle output
      setState(() {
        installEvents = event;
      });
      // ...
      // If needed kill the shell
      print(event);
    });

    // TODO: Update with live-time script path
    var tempShell = Shell(runInShell: true);
    var whichMacOS = (await tempShell.run("uname -m")).outText;
    var microk8sInstallationCommand = "";
    if (whichMacOS == "arm64") {
      microk8sInstallationCommand =
          "/opt/homebrew/bin/brew install ubuntu/microk8s/microk8s";
    } else {
      microk8sInstallationCommand =
          "/usr/local/bin/brew install ubuntu/microk8s/microk8s";
    }
    // disabling the installer button
    setState(() {
      isInstalling = true;
    });
    try {
      var fakeSudoTest = (await shell.run("sudo lsof -i:50501")).outText;
    } catch (e) {
      print(e);
    }
    try {
      var installationText =
          (await shell.run(microk8sInstallationCommand)).outText;
      print("outtext: $installationText");
      var postInstallationText =
          (await shell.run("/usr/local/bin/microk8s install")).outText;
      print("outtext: $postInstallationText");
      // since the installation is complete, returning back
      Navigator.of(context).pop();
    } catch (e) {
      print("exception: $e");
      // enabling the installer button
      setState(() {
        isInstalling = false;
      });
    }
  }

  @override
  void initState() {
    userPasswordTextFieldController.addListener(() {
      updateUserPassword();
    });
    super.initState();
  }

  @override
  void dispose() {
    userPasswordTextFieldController.dispose();
    super.dispose();
  }
}
