import 'package:fifty_gramx/community/onboarding/website/configs/page_header_config.dart';

class GalaxyPageHeaderConfig extends PageHeaderConfig {
  GalaxyPageHeaderConfig()
      : super(
          header: 'Galaxy',
          items: [
            {'title': 'Overview', 'route': '/galaxy'},
            {'title': 'Account', 'route': '/galaxy/account'},
            {'title': 'Organisation', 'route': '/galaxy/organisation'},
            {'title': 'Licences', 'route': '/galaxy/licences'},
          ],
        );
}
