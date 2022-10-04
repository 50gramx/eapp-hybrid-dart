import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// This is the stateful widget that the main application instantiates.
class HomebrewInstallerPage extends StatefulWidget {
  const HomebrewInstallerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomebrewInstallerPage> createState() => _HomebrewInstallerPageState();
}

class _HomebrewInstallerPageState extends State<HomebrewInstallerPage> {
  String installEvents = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "Homebrew Installer",
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
                child: FormInfoText("The Missing Package Manager for macOS")
                    .build(context)),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: ActionNeuButton(
                  buttonTitle: "Install",
                  isPrimaryButton: true,
                  isPrimaryButtonDisabled: (isInstalling),
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

  installHomebrew() async {
    setState(() {
      isInstalling = true;
    });

    try {
      print("${await BrewCommands.setupBrew()}");
      Navigator.of(context).pop();
    } catch (e) {
      print("exception:: \t $e");
      // enabling the installer button
      setState(() {
        isInstalling = false;
      });
    }
    setState(() {
      isInstalling = false;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
