import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SatwaOverviewPageSliverAppBar extends StatefulWidget {
  SatwaOverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _SatwaOverviewPageSliverAppBarState createState() =>
      _SatwaOverviewPageSliverAppBarState();
}

class _SatwaOverviewPageSliverAppBarState
    extends State<SatwaOverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      "SATWA",
      maxLines: 1,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: AppColors.contentPrimary(context),
          fontSize: 24,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500),
    );
    Widget tappableTitleText = GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/53gramx/satwa');
      },
      child: titleText,
    );
    var title = Hero(
        tag: "",
        transitionOnUserGestures: true,
        child: Align(
          alignment: Alignment.centerLeft,
          child: tappableTitleText,
        ));

    var actions = [
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/53gramx/satwa',
          );
        },
        child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              alignment: Alignment.center,
              child: NeumorphicText(
                "Overview",
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
                  color: AppColors.contentPrimary(context),
                  depth: 2,
                  disableDepth: false,
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundInverseTertiary(context),
                    width: 0.3,
                  ),
                ),
                textAlign: TextAlign.left,
                textStyle: NeumorphicTextStyle(
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    height: 1.25),
              ),
            )),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/53gramx/satwa/pricing',
          );
        },
        child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              alignment: Alignment.center,
              child: NeumorphicText(
                "Pricing",
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
                  color: AppColors.contentPrimary(context),
                  depth: 2,
                  disableDepth: false,
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundInverseTertiary(context),
                    width: 0.3,
                  ),
                ),
                textAlign: TextAlign.left,
                textStyle: NeumorphicTextStyle(
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    height: 1.25),
              ),
            )),
      ),
    ];

    return SliverAppBar(
      title: title,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundSecondary(context),
      pinned: true,
      actions: actions,
      stretch: true,
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
