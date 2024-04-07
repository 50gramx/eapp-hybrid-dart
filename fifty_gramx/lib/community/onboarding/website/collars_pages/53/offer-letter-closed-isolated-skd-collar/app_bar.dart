import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/header_config.dart';
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
      "Vinayak.53GRAMx",
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
        Navigator.pushNamed(context, '/53/vinayak');
      },
      child: titleText,
    );
    var title = Hero(
        tag: "50gramx-collar-53-vinayak-title-app-bar-hero",
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
      actions: OfferLetterCISKDCPageHeaderConfig().buildActions(context),
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
