import 'package:fifty_gramx/community/onboarding/website/page_header_items.dart';

class HomePageHeaderConfig extends PageHeaderConfig {
  HomePageHeaderConfig()
      : super(
          header: 'Company',
          items: [
            {'title': 'About', 'route': '/about'},
          ],
        );
}
