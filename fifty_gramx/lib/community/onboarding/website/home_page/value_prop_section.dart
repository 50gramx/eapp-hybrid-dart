import 'package:carousel_slider/carousel_slider.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageValuePropSection(BuildContext context) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Your Personalized Cyber-Physical Universe',
                    style: TextStyle(
                        color: AppColors.contentPrimary(context),
                        fontSize: 36,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,
                        height: 1.14285714),
                  ),
                  SizedBox(height: 10),
                ]),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.7,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              enlargeCenterPage: true,
            ),
            items: [
              // Replace the placeholders with your actual objectives for each professional
              'Legal Professionals: Access Legal Information Securely',
              'Finance Professionals: Manage Financial Data Efficiently',
              // Add more objectives as needed
            ].map((objective) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          lightSource: NeumorphicTheme.isUsingDark(context)
                              ? LightSource.bottomRight
                              : LightSource.topLeft,
                          shadowLightColor: NeumorphicTheme.isUsingDark(context)
                              ? AppColors.gray600
                              : AppColors.backgroundSecondary(context),
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.stadium(),
                          color: AppColors.backgroundInverseTertiary(context),
                          border: NeumorphicBorder(
                            isEnabled: true,
                            color: AppColors.backgroundPrimary(context),
                            width: 2,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 0.7 * MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16, right: 16, top: 4, bottom: 16),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: objective,
                                  style: TextStyle(
                                      color: AppColors.contentInversePrimary(
                                          context),
                                      fontSize: 22,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400,
                                      height: 1.14285714),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ));
                },
              );
            }).toList(),
          ),
        ],
      ),
    ),
  );
}
