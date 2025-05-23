import 'package:fifty_gramx/community/onboarding/website/configs/page_header_config.dart';

class OfferLetterCISKDCPageHeaderConfig extends PageHeaderConfig {
  OfferLetterCISKDCPageHeaderConfig()
      : super(
          header: 'Vinayak.53GRAMx',
          items: [
            {'title': 'Overview', 'route': '/53/vinayak'},
            {'title': 'Jobseekers', 'route': '/53/vinayak/job-seekers'},
            {
              'title': 'HR Professionals',
              'route': '/53/vinayak/hr-professionals'
            },
            {'title': 'Licences', 'route': '/53/vinayak/licences'},
          ],
        );
}
