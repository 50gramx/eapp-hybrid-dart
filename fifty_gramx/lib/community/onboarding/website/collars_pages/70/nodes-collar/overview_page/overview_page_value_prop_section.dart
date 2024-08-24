import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';

Widget buildThings50DC500000000OverviewPageValuePropSection(
    BuildContext context) {
  return LayoutBuilder(
    builder: (context, constraints) {
      bool isMobile = !LayoutBreakpoint().isNavigatingLeft(context);

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
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16.0 : 40.0,
            vertical: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Why Choose 50GRAMx Ethos Nodes?',
                style: TextStyle(
                  fontSize: isMobile ? 20 : 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.contentPrimary(context),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Adjust GridView properties for better height management
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobile ? 1 : 3,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: isMobile
                      ? 3
                      : 1, // Adjust aspect ratio for better height management
                ),
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return _buildValuePropItem(
                    context,
                    icon: _getIconForIndex(index),
                    title: _getTitleForIndex(index),
                  );
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

// Helper function to get icon based on index
IconData _getIconForIndex(int index) {
  switch (index) {
    case 0:
      return Icons.monetization_on;
    case 1:
      return Icons.network_check;
    case 2:
      return Icons.settings;
    default:
      return Icons.help;
  }
}

// Helper function to get title based on index
String _getTitleForIndex(int index) {
  switch (index) {
    case 0:
      return 'Monetize idle CPU and GPU power';
    case 1:
      return 'Seamless integration with the 50GRAMx network';
    case 2:
      return 'Easy setup and management';
    default:
      return 'Unknown';
  }
}

Widget _buildValuePropItem(BuildContext context,
    {required IconData icon, required String title}) {
  return Neumorphic(
    style: NeumorphicStyle(
      color: AppColors.backgroundPrimary(context),
      depth: 0, // Flat appearance to match the design
    ),
    child: Column(
      mainAxisSize:
          MainAxisSize.min, // Ensure column takes only necessary space
      children: [
        SizedBox(
          height: 50,
          child: NeumorphicIcon(
            icon,
            size: 50,
            style: NeumorphicStyle(
              color: AppColors.contentPrimary(context),
              depth: 4,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.contentSecondary(context),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
