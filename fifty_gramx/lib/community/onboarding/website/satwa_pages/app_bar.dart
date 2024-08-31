import 'package:fifty_gramx/community/onboarding/website/satwa_pages/header_config.dart';
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
    return SatwaPageHeaderConfig().buildSliverAppBar(context);
  }
}
