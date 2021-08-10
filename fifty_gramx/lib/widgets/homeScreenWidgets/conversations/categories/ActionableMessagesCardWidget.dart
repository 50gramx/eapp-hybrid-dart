import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/listItem/compact/artworknone/chevronWithLabelTrailing.dart';
import 'package:fifty_gramx/widgets/components/listItem/standard/artworksmall/labelWIthSupportParaWithIconTrailing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ActionableMessagesCardWidget extends StatefulWidget {
  const ActionableMessagesCardWidget({Key? key, required this.cardTitle})
      : super(key: key);

  final String cardTitle;

  @override
  State<ActionableMessagesCardWidget> createState() =>
      _ActionableMessagesCardWidgetState();
}

class _ActionableMessagesCardWidgetState extends State<ActionableMessagesCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Neumorphic(
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
                color: AppColors.backgroundPrimary(context), width: 2),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChevronWithLabelTrailing(
                  labelText: widget.cardTitle,
                  isTrailingActive: true,
                ),
              ],
            ),
          ),
        ));
  }
}
