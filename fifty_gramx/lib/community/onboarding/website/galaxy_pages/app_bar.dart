import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class GalaxyOverviewPageSliverAppBar extends StatefulWidget {
  GalaxyOverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _GalaxyOverviewPageSliverAppBarState createState() =>
      _GalaxyOverviewPageSliverAppBarState();
}

class _GalaxyOverviewPageSliverAppBarState
    extends State<GalaxyOverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      "Galaxy",
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
        Navigator.pushNamed(context, '/galaxy');
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
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Domains",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Professionals",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Organisations",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Pricing",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      Container(
        padding: EdgeInsets.only(left: 6, right: 6),
        alignment: Alignment.center,
        child: NeumorphicText(
          "PRICING",
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
      )
    ];

    return SliverAppBar(
      title: title,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
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

/* 

CustomSliverAppBar(
          labelText: "50GRAMx",
          actionLabelText: "Ethosai",
          isActionEnabled: false,
          isBackEnabled: false,
          trailingButtonCallback: () {},
          onStretchTriggerCallback: () {},
        ),

*/

Widget buildAppBarTextButton(String title, BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 6, right: 6),
    alignment: Alignment.center,
    child: NeumorphicText(
      title,
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
            topRight: Radius.circular(24), bottomRight: Radius.circular(24))),
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
  );
}
