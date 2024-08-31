import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/header_config.dart';
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
    return GalaxyPageHeaderConfig().buildSliverAppBar(context);
  }
}
