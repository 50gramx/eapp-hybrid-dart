import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EthosverseOverviewPageSliverAppBar extends StatefulWidget {
  EthosverseOverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _EthosverseOverviewPageSliverAppBarState createState() =>
      _EthosverseOverviewPageSliverAppBarState();
}

class _EthosverseOverviewPageSliverAppBarState
    extends State<EthosverseOverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      "Ethosverse",
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
        Navigator.pushNamed(context, '/ethosverse');
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

    var actions = [SizedBox()];

    return SliverAppBar(
      title: title,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      pinned: true,
      actions: actions,
      stretch: true,
      onStretchTrigger: () async {
        if (kDebugMode) {
          print("OnStretchTrigger:start");
          print("OnStretchTrigger:finish");
        }
      },
    );
  }
}
