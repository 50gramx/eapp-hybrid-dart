import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OpenPagesPane extends StatelessWidget {
  final bool focusMode;
  final List<Widget> pagesStack;

  OpenPagesPane({
    required this.focusMode,
    required this.pagesStack,
  });

  @override
  Widget build(BuildContext context) {
    print("building OpenPagesPane");
    Widget primaryPageContainer = Neumorphic(
      style: NeumorphicStyle(
        lightSource:
        NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(
            context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundPrimary(context),
        depth: NeumorphicTheme.isUsingDark(context) ? 6 : 3,
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 1,
        ),
      ),
      margin: EdgeInsets.only(
          top: 16, bottom: 8, right: 8, left: 8),
      child: Container(
        child: Stack(
          children: pagesStack,
        ),
      ),
    );
    Widget secondColumn = Visibility(
      visible: false,
      child: Expanded(
          flex: 0,
          child: Column(
            children: [
              Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource:
                      NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor:
                      NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(
                          context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color:
                        AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    child: Container(
                      color: AppColors.backgroundPrimary(context),
                      child: SizedBox(),
                    ),
                  )),
              Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource:
                      NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor:
                      NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(
                          context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color:
                        AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    child: Container(
                      color: AppColors.backgroundPrimary(context),
                      child: SizedBox(),
                    ),
                  )),
              Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource:
                      NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor:
                      NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(
                          context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color:
                        AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    child: Container(
                      color: AppColors.backgroundPrimary(context),
                      child: SizedBox(),
                    ),
                  )),
            ],
          )),
    );
    Widget thirdColumn =  Visibility(
      visible: false,
      child: Expanded(
          flex: 0,
          child: Column(
            children: [
              Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource:
                      NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor:
                      NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(
                          context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color:
                        AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    child: Container(
                      color: AppColors.backgroundPrimary(context),
                      child: SizedBox(),
                    ),
                  )),
              Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource:
                      NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor:
                      NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(
                          context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color:
                        AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    child: Container(
                      color: AppColors.backgroundPrimary(context),
                      child: SizedBox(),
                    ),
                  )),
              Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource:
                      NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor:
                      NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(
                          context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color:
                        AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    child: Container(
                      color: AppColors.backgroundPrimary(context),
                      child: SizedBox(),
                    ),
                  ))
            ],
          )),
    );
    Widget superRow = Row(
      children: [
        Expanded(
            flex: 12,
            child: Flexible(
              child: primaryPageContainer
            )),
      ],
    );
    Widget superColumn = Column(
      children: [
        Visibility(
            visible: focusMode,
            child: Flexible(
                flex: 12, //35
                child: superRow
            )), // todo: gayab mode
      ],
    );
    print("Building OpenPagesPane");
    return Expanded(
      flex: 8,
      child: Container(
        child: primaryPageContainer,
      ),
    );
  }
}
