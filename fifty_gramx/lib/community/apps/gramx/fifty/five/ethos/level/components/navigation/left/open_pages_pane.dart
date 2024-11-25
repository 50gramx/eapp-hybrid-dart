import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/spacesHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/topPicksPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-template/gpu_template_page.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OpenPagesPane extends StatelessWidget {
  final String focusPaneKey;
  final List<Widget> pagesStack;
  final List<Widget> ethosStack;
  final bool isEthosStackPagesVisible;
  final bool isCommunityStackPagesVisible;
  final Function() hideEthosStackPages;
  final Function() toggleSearchOnTop;
  final Widget openPagesTabs;
  final Function(String) focusPaneShift;
  final bool isAccountAvailable;
  final ValueChanged<bool> onAccountAvailability;

  OpenPagesPane({
    required this.focusPaneKey,
    required this.pagesStack,
    required this.ethosStack,
    required this.isEthosStackPagesVisible,
    required this.isCommunityStackPagesVisible,
    required this.hideEthosStackPages,
    required this.toggleSearchOnTop,
    required this.openPagesTabs,
    required this.focusPaneShift,
    required this.isAccountAvailable,
    required this.onAccountAvailability,
  });

  Widget buildSecondColumn(BuildContext context) {
    if (!isEthosStackPagesVisible)
      return SizedBox.shrink(); // Hide the widget when _isVisible is false
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16, bottom: 4),
              child: Text(
                "ETHOS STACK APP PAGES",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: AppColors.contentTertiary(
                      context), // Adjust based on your theme
                ),
              ),
            ),
            GestureDetector(
              onTap: hideEthosStackPages,
              child: Padding(
                padding: EdgeInsets.only(top: 8, right: 16, bottom: 4),
                child: Icon(
                  FeatherIcons.eyeOff,
                  size: 12,
                  color: AppColors.contentTertiary(context),
                ),
              ),
            ),
          ],
        ),
        Flexible(
          child: Neumorphic(
            style: NeumorphicStyle(
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.all(Radius.circular(24))),
              color: AppColors.backgroundPrimary(context),
              border: NeumorphicBorder(
                isEnabled: true,
                color: AppColors.backgroundPrimary(context),
                width: 2,
              ),
            ),
            margin: EdgeInsets.only(top: 4, bottom: 8, right: 8, left: 8),
            child: Container(
              child: Stack(
                children: ethosStack,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isOneEappLoaded = AppFlowManager.instance
            .getEutopiaNavigationBarSectionalItems()!
            .length ==
        1;
    Widget primaryPageContainer = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: isOneEappLoaded
            ? NeumorphicBoxShape.roundRect(
                BorderRadius.all(Radius.circular(24)))
            : NeumorphicBoxShape.roundRect(
                BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundPrimary(context),
        depth: NeumorphicTheme.isUsingDark(context) ? 6 : 3,
        border: NeumorphicBorder(
          isEnabled: isOneEappLoaded ? false : true,
          color: AppColors.backgroundPrimary(context),
          width: 1,
        ),
      ),
      margin: isOneEappLoaded
          ? EdgeInsets.zero
          : EdgeInsets.only(top: 0, bottom: 8, right: 8, left: 8),
      child: Container(
        child: Stack(
          children: pagesStack,
        ),
      ),
    );
    Widget thirdColumn = Visibility(
      visible: false,
      child: Expanded(
          flex: 0,
          child: Column(
            children: [
              Expanded(
                  child: Neumorphic(
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.all(Radius.circular(24))),
                  color: AppColors.backgroundPrimary(context),
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundPrimary(context),
                    width: 2,
                  ),
                ),
                margin: EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                child: Container(
                  color: AppColors.backgroundPrimary(context),
                  child: SizedBox(),
                ),
              )),
              Expanded(
                  child: Neumorphic(
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.all(Radius.circular(24))),
                  color: AppColors.backgroundPrimary(context),
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundPrimary(context),
                    width: 2,
                  ),
                ),
                margin: EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                child: Container(
                  color: AppColors.backgroundPrimary(context),
                  child: SizedBox(),
                ),
              )),
              Expanded(
                  child: Neumorphic(
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.all(Radius.circular(24))),
                  color: AppColors.backgroundPrimary(context),
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundPrimary(context),
                    width: 2,
                  ),
                ),
                margin: EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                child: Container(
                  color: AppColors.backgroundPrimary(context),
                  child: SizedBox(),
                ),
              ))
            ],
          )),
    );
    Widget newRow = Row(
      children: [
        Flexible(
          child: Text("New Row Content Here"),
        ),
        // Add more children as needed
      ],
    );
    Widget superRow = Row(
      children: [
        Flexible(
            flex: isCommunityStackPagesVisible ? 7 : 0,
            child: primaryPageContainer),
        Flexible(
            flex: isEthosStackPagesVisible ? 5 : 0,
            child: buildSecondColumn(context)),
      ],
    );
    Widget superColumn = Column(
      children: [
        Visibility(
            visible: focusPaneKey == "Open Pages",
            child: Flexible(
                flex: 12, //35
                child: superRow)), // todo: gayab mode
      ],
    );
    return Expanded(
      flex: 8,
      child: Container(
        child: Column(
          children: [
            focusPaneKey == "Open Pages"
                ? openPagesTabs
                : SizedBox.shrink(), // New row at the top
            focusPaneKey == "Open Pages"
                ? Flexible(
                    child: superRow,
                  )
                : SizedBox.shrink(),
            focusPaneKey == "Top Picks"
                ? Flexible(
                    child: TopPicksPage(
                      index: 2,
                      containingFlowTitle: "Spaces",
                      focusPaneKey: focusPaneKey,
                      focusPaneShift: focusPaneShift,
                      isAccountAvailable: isAccountAvailable,
                    ),
                  )
                : SizedBox.shrink(),
            focusPaneKey == "Podeage"
                ? Flexible(
                    child: SpacesHomePage(
                      index: 2,
                      containingFlowTitle: "Spaces",
                      focusPaneShift: focusPaneShift,
                    ),
                  )
                : SizedBox.shrink(),
            focusPaneKey == "Launch Pod"
                ? Flexible(
                    child: PodCreationPage(
                      isAccountAvailable: isAccountAvailable,
                      onAccountAvailability: onAccountAvailability,
                    ),
                  )
                : SizedBox.shrink(),
            focusPaneKey == "Space Domains"
                ? Flexible(
                    child: SpacesHomePage(
                      index: 2,
                      containingFlowTitle: "Spaces",
                      focusPaneShift: focusPaneShift,
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
