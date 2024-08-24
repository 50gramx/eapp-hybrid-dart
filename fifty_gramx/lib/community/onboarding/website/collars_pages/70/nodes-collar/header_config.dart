import 'package:fifty_gramx/community/onboarding/website/page_header_items.dart';

class Things50DC500000000PageHeaderConfig extends PageHeaderConfig {
  Things50DC500000000PageHeaderConfig()
      : super(
          header: 'Nodes',
          items: [
            {'title': 'Overview', 'route': '/70/nodes'},
            {'title': 'Gamers', 'route': '/70/nodes/gamers'},
            {'title': 'ML Researchers', 'route': '/70/nodes/ml-researchers'},
            {'title': 'Plans', 'route': '/70/nodes/plans'},
          ],
        );
}
