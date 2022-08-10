import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:process_run/shell.dart';

import '../../../components/TextField/NameTextField.dart';

/// This is the stateful widget that the main application instantiates.
class MultipassInstallerPage extends StatefulWidget {
  const MultipassInstallerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MultipassInstallerPage> createState() => _MultipassInstallerPageState();
}

class _MultipassInstallerPageState extends State<MultipassInstallerPage> {
  String installEvents = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "Multipass Installer",
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
                child: FormInfoText("Ubuntu VMs on demand for any workstation")
                    .build(context)),
            Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
                child: NameTextField(
                    hintText: "User's Password",
                    nameTextFieldController: userPasswordTextFieldController)),
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

      // ...
      // If needed kill the shell
      setState(() {
        installEvents = event;
      });
      print(event);
    });
//    try {
//      await shell.run('dart echo.dart some_text');
//    } on ShellException catch (_) {
//      // We might get a shell exception
//    }

//    var env = ShellEnvironment()..aliases['sudo'] = 'sudo --stdin';
//
//    // Create a fake stdin stream from the password variable
//    var stdin =
//        ByteStream.fromBytes(systemEncoding.encode(pwd)).asBroadcastStream();
//
//    // Execute!
//    var shell = Shell(stdin: stdin, environment: env);
    var tempShell = Shell(runInShell: true);
    var whichMacOS = (await tempShell.run("uname -m")).outText;
    var multipassInstallationCommand = "";
    if (whichMacOS == "arm64") {
      multipassInstallationCommand =
          "/opt/homebrew/bin/brew install --cask multipass";
    } else {
      multipassInstallationCommand =
          "/usr/local/bin/brew install --cask multipass";
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
          (await shell.run(multipassInstallationCommand)).outText;
      print("outtext: $installationText");
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
