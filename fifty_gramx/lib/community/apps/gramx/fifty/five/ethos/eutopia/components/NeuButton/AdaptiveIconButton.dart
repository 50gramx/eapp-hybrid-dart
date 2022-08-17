import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AdaptiveNeuButton extends StatefulWidget {
  @override
  const AdaptiveNeuButton({
    Key? key,
    required this.buttonTitle,
    required this.buttonActionOnPressed,
    required this.icon,
    final this.isPrimaryButton = true,
    final this.isPrimaryButtonDisabled = false,
    final this.noBorder = false,
    final this.isCollapsed = false,
  }) : super(key: key);

  final String buttonTitle;
  final VoidCallback buttonActionOnPressed;
  final Widget icon;
  final bool isPrimaryButton;
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
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: widget.isPrimaryButton
              ? (widget.isPrimaryButtonDisabled
                  ? AppColors.contentStateDisabled(context)
                  : AppColors.contentPrimary(context))
              : AppColors.backgroundSecondary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundPrimary(context),
            width: widget.noBorder ? 0 : 2,
          ),
        ),
        margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 24,
              width: 24,
              child: widget.icon,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
            ),
            Visibility(
              visible: !widget.isCollapsed,
              child: Container(
              width: MediaQuery.of(context).size.width - 66 - 116,
              child: Text(
                widget.buttonTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: widget.isPrimaryButton
                        ? AppColors.contentInversePrimary(context)
                        : AppColors.contentPrimary(context),
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700),
              ),
            ),),
          ],
        ));
  }
}
