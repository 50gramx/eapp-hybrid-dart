import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ValuePropSectionConfig {
  final String title;
  final List<IconData> icons;
  final List<String> titles;
  final String variant;

  ValuePropSectionConfig({
    required this.title,
    required this.icons,
    required this.titles,
    this.variant = 'default', // Default variant
  });

  // Method to build the value proposition section widget
  Widget buildValuePropSection(BuildContext context) {
    bool isMobile = !LayoutBreakpoint().isNavigatingLeft(context);
    double paddingValue = isMobile ? 16.0 : 24.0;

    // Early return if lists are empty
    if (icons.isEmpty || titles.isEmpty) {
      return Center(
        child: Text(
          "No data available",
          style:
              TextStyle(fontSize: 18, color: AppColors.contentPrimary(context)),
        ),
      );
    }

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: isMobile ? 22 : 28,
                fontWeight: FontWeight.bold,
                color: AppColors.contentPrimary(context),
                fontFamily: "Montserrat",
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile ? 1 : 3,
                crossAxisSpacing: isMobile ? 16.0 : 24.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: isMobile ? 2.1 : 3,
              ),
              itemCount: icons.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return _buildValuePropItem(
                  context,
                  icon: icons[index],
                  title: titles[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build individual value prop items
  Widget _buildValuePropItem(BuildContext context,
      {required IconData icon, required String title}) {
    return Neumorphic(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      style: NeumorphicStyle(
        color: AppColors.backgroundPrimary(context),
        depth: 0, // Increased depth for more pronounced Neumorphic effect
        shadowDarkColor: Colors.black.withOpacity(0.2), // Darker shadow
        shadowLightColor: Colors.white.withOpacity(0.8), // Lighter shadow
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(12)), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NeumorphicIcon(
              icon,
              size: 50,
              style: NeumorphicStyle(
                color: AppColors.contentPrimary(context),
                depth: 4,
              ),
            ),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.contentSecondary(context),
                fontFamily: "Montserrat", // Optional: Consistent font family
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
