import 'package:fifty_gramx/community/onboarding/website/page_header_config.dart';

class SpacePageHeaderConfig extends PageHeaderConfig {
  SpacePageHeaderConfig()
      : super(
          header: 'Space',
          items: [
            {'title': 'Overview', 'route': '/space'},
            {'title': 'Personal', 'route': '/space/personal'},
            {'title': 'Team', 'route': '/space/team'},
            {'title': 'Licences', 'route': '/space/licences'},
          ],
        );
}
