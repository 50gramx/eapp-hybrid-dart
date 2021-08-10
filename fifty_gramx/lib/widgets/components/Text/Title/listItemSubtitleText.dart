import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ListItemSubtitleTextWidget extends StatelessWidget {
  final String subtitleText;
  final double fontSize;
  final FontWeight fontWeight;
  final bool disableNeu;

  const ListItemSubtitleTextWidget(
      {Key? key,
      required this.subtitleText,
      this.disableNeu = false,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w800})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 40,
      ),
      child: !disableNeu
          ? NeumorphicText(
              subtitleText,
              style: NeumorphicStyle(
                color: AppColors.contentTertiary(context),
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                border: NeumorphicBorder(
                    color: AppColors.backgroundPrimary(context), width: 1),
              ),
              textAlign: TextAlign.start,
              textStyle: NeumorphicTextStyle(
                  fontFamily: "Montserrat",
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  height: 1.42857143),
            )
          : Text(
              subtitleText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: AppColors.contentSecondary(context),
                  fontFamily: "Montserrat",
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  height: 1.5),
            ),
    );
  }
}
