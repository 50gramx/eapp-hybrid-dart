import 'package:fifty_gramx/community/onboarding/website/page_header_config.dart';

class HomePageHeaderConfig extends PageHeaderConfig {
  HomePageHeaderConfig()
      : super(
          header: 'Company',
          items: [
            // {
            //   'title': 'Works',
            //   'route': 'https://ethosfoundations.50gramx.com/xcommunities'
            // },
            {'title': 'About', 'route': '/about'},
          ],
        );
}
