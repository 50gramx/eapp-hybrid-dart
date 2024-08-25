import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Conditional import for platform-specific implementations
import 'download_helper_web.dart'
    if (dart.library.io) 'download_helper_nonweb.dart';

Widget buildThings50DC500000000OverviewPageHeroSection(BuildContext context) {
  return Neumorphic(
    style: NeumorphicStyle(
      lightSource: NeumorphicTheme.isUsingDark(context)
          ? LightSource.bottomRight
          : LightSource.topLeft,
      shadowLightColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray600
          : AppColors.backgroundSecondary(context),
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
      color: AppColors.backgroundPrimary(context),
      border: NeumorphicBorder(
        isEnabled: true,
        color: AppColors.backgroundPrimary(context),
        width: 2,
      ),
      disableDepth: true,
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Transform Your Spare Computing Power into Income with 50GRAMx Ethos Nodes",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: AppColors.contentPrimary(context),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Join a distributed network and start earning by running a slice of the 50GRAMx network.",
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.contentSecondary(context),
            ),
          ),
          SizedBox(height: 20.0),
          NeumorphicButton(
            onPressed: () async {
              // Insert logic to automatically download the 50GRAMx eNodes Desktop App
              // Replace with your public URL and desired filename
              String url =
                  'https://storage.googleapis.com/packges/com.50gramx.seventy.zero.ethos.nodes.dev/50GRAMx-eNodes.dmg';
              String fileName = '50GRAMx-eNodes.dmg';

              // Start downloading the file
              await downloadFile(url, fileName);
            },
            style: NeumorphicStyle(
              color: AppColors.contentPrimary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              "Start Earning – Download Now",
              style: TextStyle(
                color: AppColors.contentInversePrimary(context),
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
