import 'package:fifty_gramx/community/onboarding/website/configs/overview_page_hero_section.dart';

// Conditional import for platform-specific implementations
import 'download_helper_web.dart'
    if (dart.library.io) 'download_helper_nonweb.dart';

class OverviewPageHeroSectionConfig extends HeroSectionConfig {
  OverviewPageHeroSectionConfig()
      : super(
          title:
              'Transform Your Spare Computing Power into Income with 50GRAMx Ethos Nodes',
          subtitle:
              'Join a distributed network and start earning by running a slice of the 50GRAMx network.',
          backgroundImage: 'https://example.com/background-image.jpg',
          buttonText: 'Start Earning – Download Now',
          buttonAction: () async {
            String url =
                'https://storage.googleapis.com/packges/com.50gramx.seventy.zero.ethos.nodes.dev/50GRAMx-eNodes.dmg';
            String fileName = '50GRAMx-eNodes.dmg';

            // Start downloading the file
            await downloadFile(url, fileName);
          },
        );

  // Additional methods or properties specific to this hero section can be added here
}
