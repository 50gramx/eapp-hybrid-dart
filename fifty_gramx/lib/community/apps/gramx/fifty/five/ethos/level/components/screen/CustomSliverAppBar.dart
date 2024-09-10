import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuIconButton.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomSliverAppBar extends StatefulWidget {
  CustomSliverAppBar({
    Key? key,
    required this.labelText,
    this.labelHeroTag = "",
    required this.actionLabelText,
    required this.isBackEnabled,
    required this.trailingButtonCallback,
    required this.onStretchTriggerCallback,
    this.isActionEnabled = true,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  final String labelText;
  final String labelHeroTag;
  final String actionLabelText;
  final bool isBackEnabled;
  final VoidCallback trailingButtonCallback;
  final VoidCallback onStretchTriggerCallback;
  final bool isActionEnabled;

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    var leading;
    var appBar;

    var title = Hero(
        tag: "",
        transitionOnUserGestures: true,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.labelText,
            maxLines: 1,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 24,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500),
          ),
        ));

    var actions = [
      widget.isActionEnabled
          ? Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: NeumorphicButton(
                  provideHapticFeedback: true,
                  onPressed: () {
                    widget.trailingButtonCallback();
                  },
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.contentPrimary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundSecondary(context),
                      width: 2,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text(
                    widget.actionLabelText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.contentInversePrimary(context),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500),
                  )),
            )
          : SizedBox(),
    ];

    Widget customSliverAppBar;
    if (widget.isBackEnabled) {
      var neuIcon = ActionNeuIconButton(
          buttonIcon: FeatherIcons.chevronLeft,
          buttonActionOnPressed: () {
            Navigator.of(context).pop();
          });
      var oldChild = Ink(
        decoration: const ShapeDecoration(
            color: AppColors.primaryColor, shape: CircleBorder()),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.secondaryColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      );

      var backButton = NeumorphicButton(
        margin: EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
        padding: EdgeInsets.zero,
        style: NeumorphicStyle(
          color: AppColors.backgroundPrimary(context),
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          border: NeumorphicBorder(
              color: AppColors.backgroundSecondary(context), width: 2),
        ),
        child: Center(
          child: Icon(
            FeatherIcons.chevronLeft,
            size: 24,
            color: AppColors.contentPrimary(context),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      leading = backButton;
      customSliverAppBar = SliverAppBar(
        leading: leading,
        title: title,
        backgroundColor: AppColors.backgroundPrimary(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        pinned: true,
        actions: actions,
      );
    } else {
      customSliverAppBar = SliverAppBar(
        title: title,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundPrimary(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        pinned: true,
        actions: actions,
        stretch: true,
        onStretchTrigger: () async {
          if (kDebugMode) {
            print("OnStretchTrigger:start");
          }
          widget.onStretchTriggerCallback();
          if (kDebugMode) {
            print("OnStretchTrigger:finish");
          }
        },
      );
    }

    return customSliverAppBar;
  }
}
