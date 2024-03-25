import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePageSliverAppBar extends StatefulWidget {
  HomePageSliverAppBar({
    Key? key,
    bool this.isPinned = true,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  final bool isPinned;

  @override
  final Size preferredSize;

  @override
  _HomePageSliverAppBarState createState() => _HomePageSliverAppBarState();
}

class _HomePageSliverAppBarState extends State<HomePageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      "50GRAMx",
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
        Navigator.pushNamed(context, '/');
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
      Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
        child: PopupMenuButton(
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(
              child: ListTile(
                title: Text(
                  'Overview',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.appTextStyle(context),
                ),
                onTap: () {
                  // Handle About action
                  Navigator.pop(context); // Close popup menu
                  Navigator.pushNamed(context, '/galaxy');
                },
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                title: Text(
                  'Pricing',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.appTextStyle(context),
                ),
                onTap: () {
                  // Handle Careers action
                  Navigator.pop(context); // Close popup menu
                  Navigator.pushNamed(context, '/galaxy/pricing');
                },
              ),
            ),
          ],
          child: Row(
            children: [
              buildAppBarTextButton("Galaxy", context),
              Icon(Icons.arrow_drop_down,
                  color: AppColors.contentPrimary(context)),
            ],
          ),
          padding: EdgeInsets.zero,
          elevation: 6,
          position: PopupMenuPosition.under,
          color: AppColors.backgroundPrimary(context),
          shape: BeveledRectangleBorder(),
          tooltip: "",
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
        child: PopupMenuButton(
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(
              child: ListTile(
                title: Text(
                  'About',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.appTextStyle(context),
                ),
                onTap: () {
                  // Handle About action
                  Navigator.pop(context); // Close popup menu

                  Navigator.pushNamed(context, '/about');
                },
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                title: Text(
                  'Careers',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.appTextStyle(context),
                ),
                onTap: () {
                  // Handle Careers action
                  Navigator.pop(context); // Close popup menu
                },
              ),
            ),
          ],
          child: Row(
            children: [
              buildAppBarTextButton("Company", context),
              Icon(Icons.arrow_drop_down,
                  color: AppColors.contentPrimary(context)),
            ],
          ),
          padding: EdgeInsets.zero,
          elevation: 6,
          position: PopupMenuPosition.under,
          color: AppColors.backgroundPrimary(context),
          shape: BeveledRectangleBorder(),
          tooltip: "",
        ),
      ),
    ];

    return SliverAppBar(
      title: title,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      pinned: widget.isPinned,
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
