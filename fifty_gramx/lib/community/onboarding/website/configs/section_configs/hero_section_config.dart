import 'dart:js' as js;

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Configuration class for the hero section
class HeroSectionConfig {
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String buttonText;
  final VoidCallback buttonAction;
  final String variant;

  HeroSectionConfig({
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.buttonText,
    required this.buttonAction,
    this.variant = 'default', // Default variant
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
              fontSize: isDesktop ? 64 : 32, // Adjust font size
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
              color: AppColors.contentPrimary(context),
              overflow: TextOverflow.ellipsis, // Handle long text
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
              fontSize: isDesktop ? 32 : 24, // Adjust font size
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
      height: MediaQuery.of(context).size.height * 0.6, // Adjust height
      decoration: backgroundImage.isNotEmpty
          ? BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
              color: backgroundImage.isEmpty
                  ? Colors.blueAccent
                  : null, // Fallback color
            )
          : BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent,
                  Colors.blueAccent
                ], // Gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
      child: heroContent,
    );

    switch (variant) {
      case 'default':
        return defaultVariant;
      case 'desktop-download-cta':
        return defaultVariant; // We'll modify the button separately
      default:
        return defaultVariant;
    }
  }

  // Method to build the CTA button based on the variant
  Widget _buildCTAButton(BuildContext context) {
    if (variant == 'desktop-download-cta') {
      return _buildDownloadButton(context);
    }

    // Default button
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
          fontSize: 18.0, // Adjust font size
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

// Method to build the download button for desktop-download-cta variant
  Widget _buildDownloadButton(BuildContext context) {
    String osName = _getOSName();
    IconData osIcon = _getOSIcon(osName);

    return GestureDetector(
      onLongPress: () {
        // This will trigger the popup menu
        _popupButtonKey.currentState?.showButtonMenu();
      },
      onTap: () {
        // This will trigger the popup menu
        _popupButtonKey.currentState?.showButtonMenu();
      },
      child: PopupMenuButton<int>(
        key: _popupButtonKey, // Unique key for accessing button state
        offset: Offset(0, 50), // Adjust this to control where the menu appears
        color: AppColors.contentPrimary(
            context), // Match the menu background color
        onSelected: (int result) {
          // Handle OS-specific download action based on result
          if (result == 1) {
            // macOS download action
          } else if (result == 2) {
            // Windows download action
          } else if (result == 3) {
            // Linux download action
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
          PopupMenuItem<int>(
            value: 1,
            child: Neumorphic(
              style: NeumorphicStyle(
                color: AppColors.contentPrimary(context),
                depth: -5, // Slight inset look
              ),
              child: ListTile(
                leading: Icon(Icons.apple,
                    color: AppColors.contentInversePrimary(context)),
                title: Text('Download for macOS',
                    style: TextStyle(
                        color: AppColors.contentInversePrimary(context))),
              ),
            ),
          ),
          PopupMenuItem<int>(
            value: 2,
            child: Neumorphic(
              style: NeumorphicStyle(
                color: AppColors.contentPrimary(context),
                depth: -5,
              ),
              child: ListTile(
                leading: Icon(Icons.window,
                    color: AppColors.contentInversePrimary(context)),
                title: Text('Download for Windows',
                    style: TextStyle(
                        color: AppColors.contentInversePrimary(context))),
              ),
            ),
          ),
          PopupMenuItem<int>(
            value: 3,
            child: Neumorphic(
              style: NeumorphicStyle(
                color: AppColors.contentPrimary(context),
                depth: -5,
              ),
              child: ListTile(
                leading: Icon(Icons.laptop,
                    color: AppColors.contentInversePrimary(context)),
                title: Text('Download for Linux',
                    style: TextStyle(
                        color: AppColors.contentInversePrimary(context))),
              ),
            ),
          ),
        ],
        child: NeumorphicButton(
          onPressed:
              () {}, // No action needed here, tap handled by GestureDetector
          style: NeumorphicStyle(
            color: AppColors.contentPrimary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            depth: 5,
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
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
              SizedBox(width: 8.0),
              Icon(
                Icons.arrow_drop_down,
                color: AppColors.contentInversePrimary(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Define a unique GlobalKey for the PopupMenuButton
  final GlobalKey<PopupMenuButtonState<int>> _popupButtonKey =
      GlobalKey<PopupMenuButtonState<int>>();

  // Method to get the OS name using JavaScript interop
  String _getOSName() {
    final userAgent = js.context['navigator']['userAgent'] as String;

    if (userAgent.contains('Mac OS')) {
      return 'macOS';
    } else if (userAgent.contains('Windows')) {
      return 'Windows';
    } else if (userAgent.contains('Linux')) {
      return 'Linux';
    } else {
      return 'Unknown OS';
    }
  }

  // Method to get the corresponding icon for the OS
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
