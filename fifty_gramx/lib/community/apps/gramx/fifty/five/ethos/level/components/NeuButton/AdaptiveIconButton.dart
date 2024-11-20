import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
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
        color: widget.isSelected
            ? AppColors.contentSecondary(context)
            : AppColors.contentInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: false,
          color: widget.isSelected
              ? AppColors.contentInversePrimary(context)
              : AppColors.contentInverseSecondary(context),
          width: widget.noBorder ? 0 : 2,
        ),
      ),
    );

    Widget name = Visibility(
      visible: !widget.isCollapsed,
      child: Container(
        child: Text(
          widget.buttonTitle,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: AppColors.contentInversePrimary(context),
              fontSize: 10,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600),
        ),
      ),
    );

    Widget neuButton = NeumorphicButton(
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
          shape:
              widget.isSelected ? NeumorphicShape.flat : NeumorphicShape.convex,
          disableDepth: true,
          depth: widget.isSelected ? -3 : 0,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: widget.isSelected
              ? AppColors.backgroundTertiary(context)
              : AppColors.backgroundInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: false,
            color: widget.isSelected
                ? AppColors.backgroundInverseTertiary(context)
                : AppColors.backgroundInverseTertiary(context),
            width: widget.noBorder ? 0 : 4,
          ),
        ),
        margin: LayoutBreakpoint().isNavigatingLeft(context)
            ? const EdgeInsets.fromLTRB(0, 6, 0, 6)
            : const EdgeInsets.fromLTRB(6, 0, 6, 0),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Container(
          child: Center(
            child: neuIcon,
          ),
        ));

    Widget leftExpanded = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [neuButton],
    );

    Widget bottomExpanded = Container(
      child: Column(
        children: [Container(child: neuButton), name],
      ),
    );
    return LayoutBreakpoint().isNavigatingLeft(context) ? neuButton : neuButton;
  }
}
