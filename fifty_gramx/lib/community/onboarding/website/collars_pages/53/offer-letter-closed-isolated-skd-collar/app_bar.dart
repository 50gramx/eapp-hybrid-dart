import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OfferLetterCISKDCOverviewPageSliverAppBar extends StatefulWidget {
  OfferLetterCISKDCOverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _OfferLetterCISKDCOverviewPageSliverAppBarState createState() =>
      _OfferLetterCISKDCOverviewPageSliverAppBarState();
}

class _OfferLetterCISKDCOverviewPageSliverAppBarState
    extends State<OfferLetterCISKDCOverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      "Vinayak from Staffing",
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
        Navigator.pushNamed(context, '/collars');
      },
      child: titleText,
    );
    var title = Hero(
        tag: "50gramx-domains-title-app-bar-hero",
        transitionOnUserGestures: true,
        child: Align(
          alignment: Alignment.centerLeft,
          child: tappableTitleText,
        ));

    return SliverAppBar(
      title: title,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      pinned: true,
      stretch: true,
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
