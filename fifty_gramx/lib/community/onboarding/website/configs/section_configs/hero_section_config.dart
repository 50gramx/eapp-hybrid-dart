import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Conditional imports
import 'hero_section_stub.dart' if (dart.library.js) 'hero_section_js.dart';

// Conditional import for platform-specific implementations
import '../../helpers/download/download_helper_web.dart'
    if (dart.library.io) '../../helpers/download/download_helper_nonweb.dart';

class HeroSectionConfig {
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String buttonText;
  final VoidCallback buttonAction;
  final String variant;

  // URLs for different OS are optional and only needed if variant is desktop-download-cta
  final String? macDownloadUrl;
  final String? windowsDownloadUrl;
  final String? linuxDownloadUrl;
  final String? downloadFileName;

  HeroSectionConfig({
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.buttonText,
    required this.buttonAction,
    this.variant = 'default', // Default variant
    this.macDownloadUrl,
    this.windowsDownloadUrl,
    this.linuxDownloadUrl,
    this.downloadFileName,
  });

  // Method to build the hero section widget
  Widget buildHeroSection(BuildContext context) {
    bool isDesktop = LayoutBreakpoint().isNavigatingLeft(context);

    Widget heroContent = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isDesktop ? 64 : 16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: isDesktop ? 64 : 32,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
              color: AppColors.contentPrimary(context),
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isDesktop ? 64 : 16),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: isDesktop ? 32 : 24,
              fontFamily: "Montserrat",
              color: AppColors.contentSecondary(context),
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        SizedBox(height: 20.0),
        _buildCTAButton(context),
      ],
    );

    Widget defaultVariant = Container(
      margin: EdgeInsets.symmetric(vertical: isDesktop ? 32 : 16),
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: backgroundImage.isNotEmpty
          ? BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            )
          : BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
      child: heroContent,
    );

    // Default to returning the hero section for the given variant
    return defaultVariant;
  }

  // Method to build the CTA button based on the variant
  Widget _buildCTAButton(BuildContext context) {
    if (variant == 'desktop-download-cta') {
      return _buildDownloadButton(context);
    }

    // Default button for non-download variants
    return NeumorphicButton(
      onPressed: buttonAction,
      style: NeumorphicStyle(
        color: AppColors.contentPrimary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 5,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Text(
        buttonText,
        style: TextStyle(
          color: AppColors.contentInversePrimary(context),
          fontSize: 18.0,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildDownloadButton(BuildContext context) {
    String osName = _getOSName();
    IconData osIcon = _getOSIcon(osName);
    bool isMobile = !LayoutBreakpoint().isNavigatingLeft(context);

    if (isMobile) {
      return NeumorphicButton(
        onPressed: () {
          // Show learn more or other actions for mobile
        },
        style: NeumorphicStyle(
          color: AppColors.contentPrimary(context),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: 5,
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Text(
          'Learn More About Plans',
          style: TextStyle(
            color: AppColors.contentInversePrimary(context),
            fontSize: 18.0,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    // Desktop: Show button for detected OS and icons for other OS
    List<Widget> osButtons = [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: NeumorphicButton(
          onPressed: () async {
            await _downloadFileNow(osName);
          },
          style: NeumorphicStyle(
            color: AppColors.contentPrimary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            depth: 5,
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            children: [
              Icon(
                osIcon,
                color: AppColors.contentInversePrimary(context),
              ),
              SizedBox(width: 8.0),
              Text(
                'Download for $osName',
                style: TextStyle(
                  color: AppColors.contentInversePrimary(context),
                  fontSize: 18.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    // Add icon buttons for the other two OS
    for (String otherOS in ['macOS', 'Windows', 'Linux']) {
      if (otherOS != osName) {
        osButtons.add(Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: NeumorphicButton(
            onPressed: () async {
              await _downloadFileNow(osName);
            },
            style: NeumorphicStyle(
              color: AppColors.contentInversePrimary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.stadium(),
              depth: 5,
            ),
            padding: EdgeInsets.all(12),
            child: Icon(
              _getOSIcon(otherOS),
              color: AppColors.contentPrimary(context),
            ),
          ),
        ));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: osButtons,
    );
  }

  String _getOSName() {
    return getOSName();
  }

  Future<void> _downloadFileNow(String osName) async {
    String fileUrl = "";
    String fileName = "";
    if (osName == "macOS") {
      fileUrl = macDownloadUrl!;
      fileName = "${downloadFileName}.dmg";
    } else if (osName == "Windows") {
      fileUrl = windowsDownloadUrl!;
      fileName = "${downloadFileName}.exe";
    } else if (osName == "Linux") {
      fileUrl = linuxDownloadUrl!;
      fileName = "${downloadFileName}.tar.gz";
    }
    return await downloadFile(fileUrl, fileName);
  }

  IconData _getOSIcon(String osName) {
    switch (osName) {
      case 'macOS':
        return Icons.apple;
      case 'Windows':
        return Icons.window;
      case 'Linux':
        return Icons.laptop; // Replace with appropriate Linux icon if available
      default:
        return Icons.device_unknown;
    }
  }
}
