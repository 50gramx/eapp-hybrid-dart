import 'package:fifty_gramx/community/onboarding/website/configs/page_header_config.dart';

class SatwaPageHeaderConfig extends PageHeaderConfig {
  SatwaPageHeaderConfig()
      : super(
          header: 'S.A.t.W.A Plus',
          items: [
            {'title': 'Overview', 'route': '/53/satwa-plus'},
            {'title': 'Candidates', 'route': '/53/satwa-plus/candidates'},
            {'title': 'Employers', 'route': '/53/satwa-plus/employers'},
            {'title': 'Plans', 'route': '/53/satwa-plus/plans'},
          ],
        );
}
