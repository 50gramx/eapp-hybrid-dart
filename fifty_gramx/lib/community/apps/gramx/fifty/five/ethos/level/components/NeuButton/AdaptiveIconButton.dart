import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AdaptiveNeuButton extends StatefulWidget {
  @override
  const AdaptiveNeuButton({
    Key? key,
    required this.buttonTitle,
    required this.buttonActionOnPressed,
    required this.icon,
    final this.isSelected = false,
    final this.isPrimaryButtonDisabled = false,
    final this.noBorder = false,
    final this.isCollapsed = false,
  }) : super(key: key);

  final String buttonTitle;
  final VoidCallback buttonActionOnPressed;
  final IconData icon;
  final bool isSelected;
  final bool isPrimaryButtonDisabled;
  final bool noBorder;
  final bool isCollapsed;

  @override
  State<AdaptiveNeuButton> createState() => _AdaptiveNeuButtonState();
}

class _AdaptiveNeuButtonState extends State<AdaptiveNeuButton> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("building AdaptiveNeuButton");

    Widget neuIcon = NeumorphicIcon(
      widget.icon,
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
        color: widget.isSelected ? AppColors.contentInversePrimary(context) : AppColors.contentInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: widget.isSelected ? AppColors.contentInversePrimary(context) : AppColors.contentInverseSecondary(context),
          width: widget.noBorder ? 0 : 2,
        ),
      ),
    );

    Widget name = Visibility(
      visible: !widget.isCollapsed,
      child: Container(
        width: MediaQuery.of(context).size.width - 66 - 116,
        child: Text(
          widget.buttonTitle,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: AppColors.contentInversePrimary(context),
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600),
        ),
      ),
    );

    Widget expanded = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [neuIcon, name],
    );

    print("returning AdaptiveNeuButton");
    return NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          if (!widget.isPrimaryButtonDisabled) {
            widget.buttonActionOnPressed();
          }
        },
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: widget.isSelected ? NeumorphicShape.flat : NeumorphicShape.convex,
          disableDepth: false,
          depth: widget.isSelected ? -3 : 0,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: widget.isSelected
              ? AppColors.backgroundInverseSecondary(context)
              : AppColors.backgroundInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: widget.isSelected
                ? AppColors.backgroundInverseTertiary(context)
                : AppColors.backgroundInverseTertiary(context),
            width: widget.noBorder ? 0 : 4,
          ),
        ),
        margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: Center(
          child: neuIcon,
        ));
  }
}
