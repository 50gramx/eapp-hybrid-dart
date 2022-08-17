import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/NeuButton/actionNeuIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.labelText,
    required this.actionLabelText,
    required this.isBackEnabled,
    required this.trailingButtonCallback,
    this.isActionEnabled = true,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  final String labelText;
  final String actionLabelText;
  final bool isBackEnabled;
  final VoidCallback trailingButtonCallback;
  final bool isActionEnabled;

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    var leading;
    var appBar;

    var title = Text(
      widget.labelText,
      maxLines: 1,
      style: TextStyle(
          color: AppColors.contentPrimary(context),
          fontSize: 24,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500),
    );

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
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.contentPrimary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundSecondary(context),
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
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
      appBar = AppBar(
        elevation: 5,
        automaticallyImplyLeading: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: AppColors.backgroundSecondary(context),
        leading: leading,
        title: title,
        actions: actions,
      );
    } else {
      appBar = AppBar(
        elevation: 5,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: AppColors.backgroundSecondary(context),
        title: title,
        actions: actions,
      );
    }

    return appBar;
  }
}
