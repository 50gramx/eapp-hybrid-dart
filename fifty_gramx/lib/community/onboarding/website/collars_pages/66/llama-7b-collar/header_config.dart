import 'package:fifty_gramx/community/onboarding/website/configs/page_header_config.dart';

class PodeageLLAMA7BPageHeaderConfig extends PageHeaderConfig {
  PodeageLLAMA7BPageHeaderConfig()
      : super(
          header: 'Podeage LLAMA-7B',
          items: [
            {'title': 'Overview', 'route': '/66/podeage-llama-7b'},
            // {'title': 'Developers', 'route': '/66/podeage-llama-7b/developers'},
            // {
            //   'title': 'Enterprises',
            //   'route': '/66/podeage-llama-7b/enterprises'
            // },
            {'title': 'Plans', 'route': '/66/podeage-llama-7b/plans'},
          ],
        );
}
