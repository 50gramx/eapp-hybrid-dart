import 'package:fifty_gramx/community/onboarding/website/collars_pages/70/nodes-collar/header_config.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Things50DC500000000OverviewPageSliverAppBar extends StatefulWidget {
  Things50DC500000000OverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _Things50DC500000000OverviewPageSliverAppBarState createState() =>
      _Things50DC500000000OverviewPageSliverAppBarState();
}

class _Things50DC500000000OverviewPageSliverAppBarState
    extends State<Things50DC500000000OverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Things50DC500000000PageHeaderConfig().buildSliverAppBar(context);
  }
}
