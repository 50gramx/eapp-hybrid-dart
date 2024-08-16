import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/cta_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageHeroSection(BuildContext context, bool signedIn) {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
      color: Colors.black, // Background color for the hero section
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Left side: Text and Call to Action
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Empowering Your Computing Experience',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.white,
                        fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: 20.0),
                Text(
                  'Harness the power of advanced GPUs, CPUs, and storage with Ethos Pods and Nodes. Experience unparalleled performance and flexibility in your computing needs.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white70,
                      ),
                ),
                SizedBox(height: 40.0),
                NeumorphicButton(
                  onPressed: () {
                    // Add your action here
                  },
                  style: NeumorphicStyle(
                    color: Colors.blueAccent,
                    shape: NeumorphicShape.convex,
                    intensity: 0.5,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      'Rent GPUs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                NeumorphicButton(
                  onPressed: () {
                    // Add your action here
                  },
                  style: NeumorphicStyle(
                    color: Colors.blueAccent,
                    shape: NeumorphicShape.convex,
                    intensity: 0.5,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      'Earn with GPUs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Right side: Image
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'lib/community/onboarding/website/home_page/assets/Designer-2.jpeg', // Update with your image asset path
                height: 400.0, // Adjust height as needed
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
}
