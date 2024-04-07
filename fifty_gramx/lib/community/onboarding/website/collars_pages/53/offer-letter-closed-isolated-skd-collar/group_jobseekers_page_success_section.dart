import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildVinayak53GRAMxGroupJobseekersPageSuccessSection(
    BuildContext context) {
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
        disableDepth: true),
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        color: Colors.grey[200], // Customize color as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Success',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Here\'s what our users are saying about Vinayak:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            // Testimonials
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/user1.jpg'), // Add user image
              ),
              title: Text('John Doe'),
              subtitle: Text('Vinayak helped me negotiate a better salary!'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/user2.jpg'), // Add user image
              ),
              title: Text('Jane Smith'),
              subtitle: Text(
                  'Thanks to Vinayak, I understood my job benefits better!'),
            ),
          ],
        ),
      ),
    ),
  );
}
