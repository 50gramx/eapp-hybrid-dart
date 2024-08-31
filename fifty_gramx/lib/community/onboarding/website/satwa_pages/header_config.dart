import 'package:fifty_gramx/community/onboarding/website/page_header_config.dart';

class SatwaPageHeaderConfig extends PageHeaderConfig {
  SatwaPageHeaderConfig()
      : super(
          header: 'SATWA',
          items: [
            {'title': 'Overview', 'route': '/53/satwa'},
            {'title': 'Candidates', 'route': '/53/satwa/candidates'},
            {'title': 'Employers', 'route': '/53/satwa/employers'},
            {'title': 'Plans', 'route': '/53/satwa/plans'},
          ],
        );
}
