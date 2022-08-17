import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/listItem/progress/progressHeadingListTile.dart';
import 'package:fifty_gramx/community/onboarding/gettingStartedGalaxyColumnWidget.dart';
import 'package:fifty_gramx/community/onboarding/gettingStartedUniverseColumnWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class GetStartedWidget extends StatefulWidget {
  const GetStartedWidget({Key? key, this.isAccountLoggedIn = false})
      : super(key: key);

  final bool isAccountLoggedIn;

  @override
  State<GetStartedWidget> createState() => _GetStartedWidgetState();
}

class _GetStartedWidgetState extends State<GetStartedWidget> {
  // Universe : Data Attributes
  bool isCountrySelected = false;
  bool isSelectingCountry = true;

  final selectingUniverseHeadingKey = new GlobalKey();

  completedSelectingUniverseCallback() async {
    setState(() {
      // update to select galaxy
      isSelectingCountry = false;
      isCountrySelected = true;
      isSelectingGalaxy = true;
    });
  }

  bool isGalaxySelected = false;
  bool isSelectingGalaxy = false; // warn: false
  final selectingGalaxyHeadingKey = new GlobalKey();

  // Helper functions

  @override
  void initState() {
    setState(() {
      isSelectingCountry = true;
    });

    if (widget.isAccountLoggedIn) {
      completedSelectingUniverseCallback();
    }

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundPrimary(context),
      statusBarBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
      statusBarIconBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
    ));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          backgroundColor: AppColors.backgroundPrimary(context),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  key: selectingUniverseHeadingKey,
                  width: 40,
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 32, right: 32, top: 16, bottom: 16),
                    child: RichText(
                      text: TextSpan(
                        text: "\"Ethosai is the first AI capable of"
                            " accurate semantic question answering "
                            "on enterprise-grade datasets.\"",
                        style: TextStyle(
                            color: AppColors.contentSecondary(context),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300,
                            height: 1.14285714),
                      ),
                    ),
                  ),
                ),
                ProgressHeadingListTile(
                    // key: selectingUniverseHeadingKey,
                    isTopMostTile: true,
                    isHeadingActive: isSelectingCountry,
                    isProgressed: isCountrySelected,
                    isLastMostTile: true,
                    headingTitle: "Getting Started"),
                GettingStartedUniverseColumnWidget(
                  isSelectingCountry: isSelectingCountry,
                  selectingUniverseHeadingKey: selectingUniverseHeadingKey,
                  completedSelectingUniverseCallback: () async {
                    await completedSelectingUniverseCallback();
                  },
                ),
                // ProgressHeadingListTile(
                //   key: selectingGalaxyHeadingKey,
                //   isHeadingActive: isSelectingGalaxy,
                //   isProgressed: isGalaxySelected,
                //   headingTitle: "Confirming Tier",
                //   isLastMostTile: true,
                // ),
                // GettingStartedGalaxyColumnWidget(
                //     isSelectingGalaxy: isSelectingGalaxy,
                //     selectingGalaxyHeadingKey: selectingGalaxyHeadingKey),
                SizedBox(
                  height: 64,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
