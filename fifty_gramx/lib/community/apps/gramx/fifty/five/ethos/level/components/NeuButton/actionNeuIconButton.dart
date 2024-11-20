import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ActionNeuIconButton extends StatefulWidget {
  @override
  const ActionNeuIconButton({
    Key? key,
    required this.buttonIcon,
    required this.buttonActionOnPressed,
    final this.isPrimaryButton = false,
    final this.isPrimaryButtonDisabled = false,
    final this.isSecondaryButton = false,
    final this.buttonTitle = "",
  }) : super(key: key);

  final IconData buttonIcon;
  final VoidCallback buttonActionOnPressed;
  final bool isPrimaryButton;
  final bool isPrimaryButtonDisabled;
  final String buttonTitle;
  final bool isSecondaryButton;

  @override
  State<ActionNeuIconButton> createState() => _ActionNeuIconButtonState();
}

class _ActionNeuIconButtonState extends State<ActionNeuIconButton> {
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
          widget.buttonActionOnPressed();
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
          color: widget.isPrimaryButton
              ? (widget.isPrimaryButtonDisabled
                  ? AppColors.contentStateDisabled(context)
                  : AppColors.contentPrimary(context))
              : (widget.isSecondaryButton
                  ? (widget.isPrimaryButtonDisabled
                      ? AppColors.contentStateDisabled(context)
                      : AppColors.contentSecondary(context))
                  : (widget.isPrimaryButtonDisabled
                      ? AppColors.contentStateDisabled(context)
                      : AppColors.backgroundSecondary(context))),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundPrimary(context),
            width: 2,
          ),
        ),
        margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width - 66 - 116,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "${widget.buttonTitle}",
                    style: TextStyle(
                        color: widget.isPrimaryButton
                            ? AppColors.contentInversePrimary(context)
                            : (widget.isSecondaryButton
                                ? AppColors.contentInversePrimary(context)
                                : AppColors.contentPrimary(context)),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
            Container(
              height: 24,
              width: 24,
              child: Neumorphic(
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? (widget.isPrimaryButton || widget.isSecondaryButton)
                          ? (widget.isPrimaryButtonDisabled
                              ? LightSource.bottomRight
                              : LightSource.topLeft)
                          : (widget.isPrimaryButtonDisabled
                              ? LightSource.topLeft
                              : LightSource.bottomRight)
                      : (widget.isPrimaryButton || widget.isSecondaryButton)
                          ? (widget.isPrimaryButtonDisabled
                              ? LightSource.bottomRight
                              : LightSource.bottomRight)
                          : (widget.isPrimaryButtonDisabled
                              ? LightSource.bottomRight
                              : LightSource.topLeft),
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? (widget.isPrimaryButton || widget.isSecondaryButton)
                          ? AppColors.contentPrimary(context)
                          : AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  color: widget.isPrimaryButton
                      ? (widget.isPrimaryButtonDisabled
                          ? AppColors.contentStateDisabled(context)
                          : AppColors.contentPrimary(context))
                      : (widget.isSecondaryButton
                          ? (widget.isPrimaryButtonDisabled
                              ? AppColors.contentStateDisabled(context)
                              : AppColors.contentSecondary(context))
                          : (widget.isPrimaryButtonDisabled
                              ? AppColors.contentStateDisabled(context)
                              : AppColors.backgroundSecondary(context))),
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                ),
                child: Icon(
                  widget.buttonIcon,
                  size: 20,
                  color: widget.isPrimaryButton
                      ? AppColors.contentInversePrimary(context)
                      : (widget.isSecondaryButton
                          ? AppColors.contentInversePrimary(context)
                          : AppColors.contentPrimary(context)),
                ),
              ),
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
            )
          ],
        ));
  }
}
