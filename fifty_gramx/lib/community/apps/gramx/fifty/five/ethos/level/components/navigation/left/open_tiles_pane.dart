import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OpenTilesPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Neumorphic(
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          depth: 6,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.all(Radius.circular(24))),
          color: AppColors.backgroundInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 2,
          ),
        ),
        margin: EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 8),
        child: Container(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 12,
            itemBuilder: (BuildContext context, int subIndex) {
              if (subIndex == 0) {
                return Container(
                  child: NeumorphicText(
                    "COMMUNITY TILES",
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomRight: Radius.circular(24))),
                      color: AppColors.backgroundTertiary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.backgroundTertiary(context),
                        width: 1,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textStyle: NeumorphicTextStyle(
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400),
                  ),
                  margin:
                      EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 16),
                );
              } else {
                Widget box = SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width - 12,
                );
                Widget container = Neumorphic(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    depth: 6,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.all(Radius.circular(24))),
                    color: AppColors.backgroundTertiary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundTertiary(context),
                      width: 2,
                    ),
                  ),
                  child: box,
                );
                return Flexible(
                  child: container,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
