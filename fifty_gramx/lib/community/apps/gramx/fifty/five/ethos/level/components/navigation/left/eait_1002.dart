import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/community_logo.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1008.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/page_tab_pane.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1002 extends StatelessWidget {
  final bool focusMode;
  final bool isNavigatingLeft;
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final VoidCallback toggleNavigatingPages;
  final Widget windowPane;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1002({
    required this.focusMode,
    required this.isNavigatingLeft,
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.toggleNavigatingPages,
    required this.windowPane,
    required this.navigationWidget,
  });

  @override
  Widget build(BuildContext context) {
    Widget pageTabPane = Visibility(
      visible: isNavigatingLeft,
      child: Expanded(
        child: PageTabPane(
          selectPressedSectionItem: selectPressedSectionItem,
        ),
      ),
    );

    return Container(
      child: Column(
        children: [
          Visibility(
            visible: true,
            child: Container(
              height: isNavigatingLeft ? 64 : 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommunityLogo(),
                  pageTabPane,
                  buildAccountAssistantIconButton(context, toggleNavigatingPages),
                ],
              ),
            ),
          ),
          Expanded(
            flex: isNavigatingLeft ? 11 : 8,
            child: windowPane,
          ),
          EAIT1008(
            isNavigatingLeft: isNavigatingLeft,
            navigationViewPort: navigationViewPort,
            selectPressedSectionItem: selectPressedSectionItem,
            navigationWidget: navigationWidget,
          ),
        ],
      ),
    );
  }
}

buildCommunityCardElevatedButton(context, toggleNavigatingPages) {
  return ElevatedButton(
    onPressed: () {
      toggleNavigatingPages();
    },
    child: buildCommunityCardIcon(context),
  );
}

buildCommunityCardIconButton(context) {
  return Container(
    child: NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {},
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          disableDepth: true,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 2,
          ),
        ),
        margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
        child: Center(
          child: buildCommunityCardIcon(context),
        )),
  );
}

buildCommunityCardIcon(context) {
  return NeumorphicIcon(
    FeatherIcons.bell,
    size: 24,
    style: NeumorphicStyle(
      lightSource: NeumorphicTheme.isUsingDark(context)
          ? LightSource.bottomRight
          : LightSource.topLeft,
      shadowLightColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray600
          : AppColors.backgroundSecondary(context),
      shape: NeumorphicShape.concave,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      color: AppColors.contentInverseTertiary(context),
      border: NeumorphicBorder(
        isEnabled: true,
        color: AppColors.contentInverseSecondary(context),
        width: 4,
      ),
    ),
  );
}

buildCommunityCardJustIcon(context) {
  return Icon(
    FeatherIcons.bell,
    size: 24,
    color: AppColors.orange(context),
  );
}


buildAccountAssistantIconButton(context, toggleNavigatingPages) {
  return Neumorphic(
    style: NeumorphicStyle(
      color: AppColors.backgroundPrimary(context),
      lightSource: NeumorphicTheme.isUsingDark(context)
          ? LightSource.bottomRight
          : LightSource.topLeft,
      shadowLightColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray600
          : AppColors.backgroundSecondary(context),
      border: NeumorphicBorder(
          color: AppColors.backgroundInverseTertiary(context), width: 0.5),
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
    ),
    margin: EdgeInsets.only(top: 8, right: 16),
    child: NeumorphicButton(
      provideHapticFeedback: true,
      onPressed: () {
        toggleNavigatingPages();
      },
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
        color: AppColors.backgroundPrimary(context),
      ),
      padding: const EdgeInsets.all(0),
      child: CircleAvatar(
        radius: 16,
        foregroundImage: Image.network("https://thispersondoesnotexist.com").image,
      ),
    ),
  );
}