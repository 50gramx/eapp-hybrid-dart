import 'package:fifty_gramx/community/onboarding/website/collars_pages/66/llama-7b-collar/header_config.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PodeageLLAMA7BOverviewPageSliverAppBar extends StatefulWidget {
  PodeageLLAMA7BOverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _PodeageLLAMA7BOverviewPageSliverAppBarState createState() =>
      _PodeageLLAMA7BOverviewPageSliverAppBarState();
}

class _PodeageLLAMA7BOverviewPageSliverAppBarState
    extends State<PodeageLLAMA7BOverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return PodeageLLAMA7BPageHeaderConfig().buildSliverAppBar(context);
  }
}
