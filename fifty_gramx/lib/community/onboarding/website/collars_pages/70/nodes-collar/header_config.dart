import 'package:fifty_gramx/community/onboarding/website/page_header_config.dart';

class Things50DC500000000PageHeaderConfig extends PageHeaderConfig {
  Things50DC500000000PageHeaderConfig()
      : super(
          header: 'Ethos Nodes',
          items: [
            {'title': 'Overview', 'route': '/70/ethos-nodes'},
            {'title': 'Gamers', 'route': '/70/ethos-nodes/gamers'},
            {
              'title': 'ML Researchers',
              'route': '/70/ethos-nodes/ml-researchers'
            },
            {'title': 'Plans', 'route': '/70/ethos-nodes/plans'},
          ],
        );
}
