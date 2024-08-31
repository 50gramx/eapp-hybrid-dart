import 'package:fifty_gramx/community/onboarding/website/collars_pages/header_config.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CollarsOverviewPageSliverAppBar extends StatefulWidget {
  CollarsOverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _CollarsOverviewPageSliverAppBarState createState() =>
      _CollarsOverviewPageSliverAppBarState();
}

class _CollarsOverviewPageSliverAppBarState
    extends State<CollarsOverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return CollarsPageHeaderConfig().buildSliverAppBar(context);
  }
}
