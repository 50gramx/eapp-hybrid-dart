import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/fileRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OnboardKnowledgeDomainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
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
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
      ),
      margin: const EdgeInsets.fromLTRB(6, 12, 6, 12),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 16),
                    child: RichText(
                      text: TextSpan(
                        text: "firstKnowledgeDomainName",
                        style: TextStyle(
                            color:
                            AppColors.contentSecondary(context),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            height: 1.14285714),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 16, bottom: 16, right: 16, left: 8),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Launching",
                        style: TextStyle(
                            color: AppColors.contentTertiary(context),
                            fontSize: 10,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            height: 1.14285714),
                      ),
                      // TextSpan(
                      //   text: contextLabel,
                      //   style: TextStyle(
                      //       color: AppColors.contentTertiary(context),
                      //       fontSize: 12,
                      //       fontFamily: "Montserrat",
                      //       fontWeight: FontWeight.w500,
                      //       height: 1.14285714),
                      // ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          Neumorphic(
              style: NeumorphicStyle(
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(24)),
                color: AppColors.backgroundPrimary(context),
                depth: -5,
                border: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.backgroundPrimary(context),
                  width: 2,
                ),
              ),
              margin:
              EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      FileRow(),
                      FileRow(),
                      FileRow(),
                    ],
                  ))),
        ],
      ),
    );
  }

}