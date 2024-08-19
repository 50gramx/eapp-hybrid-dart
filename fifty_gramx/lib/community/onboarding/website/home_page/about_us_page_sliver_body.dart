import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildHomeAboutUsPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      SliverAnimatedList(
          initialItemCount: 5,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return _buildSection(
                  'About Us',
                  '''
Welcome to 50GRAMx!

At 50GRAMx, we're redefining how data is processed and knowledge is shared. Our decentralized computing network brings together communities to build a more resilient and community-driven internet. Founded in 2020 with a vision for a better digital world, our platform empowers individuals and communities to collaborate beyond traditional barriers.

Our Name:
- 50: Represents the maximum number of communities within an Ethosverse, with 49 open and one classical community acting as a gateway.
- GRAM: Symbolizes the weight of collective knowledge.
- x: Signifies limitless potential and growth.

Our platform is designed to leverage distributed computing to enhance collaboration and innovation. With each new Galaxy joining, we amplify our network’s strength and resilience.
              ''',
                  context);
            } else if (position == 1) {
              return _buildSection(
                  'Our Mission',
                  '''
Empowering Communities Through Decentralization

Our mission is to foster a collaborative environment where communities can share and process data without the constraints of centralized institutions. We believe in the power of decentralized networks to drive meaningful change and innovation.
              ''',
                  context);
            } else if (position == 2) {
              return _buildSection(
                  'Our Vision',
                  '''
Building a Resilient and Inclusive Digital Future

We envision an internet where every individual can contribute to and benefit from the collective knowledge of humanity. Our goal is to create a resilient, community-driven network that thrives on shared insights and collective effort.
              ''',
                  context);
            } else if (position == 3) {
              return _buildSection(
                  'Office Address',
                  '''
Our Headquarters:

- Floor No.: 4th FLOOR
- Building No./Flat No.: UNIT FO-02
- Road/Street: 28/A 80 FEET RD
- Locality/Sub Locality: Indiranagar Bangalore
- City/Town/Village: Bengaluru
- District: Bengaluru Urban
- State: Karnataka
- PIN Code: 560038
              ''',
                  context);
            } else if (position == 4) {
              return _buildSection(
                  'GST Number',
                  '''
Tax Information:

- GST Number: 29AAFCF7727D1ZI
              ''',
                  context);
            } else {
              return SizedBox();
            }
          })
    ],
  );
}

Widget _buildSection(String title, String content, BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
    margin: EdgeInsets.only(bottom: 16.0),
    decoration: BoxDecoration(
      color: AppColors.backgroundPrimary(context),
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8.0,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
            color: AppColors.contentPrimary(context),
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Montserrat',
            color: AppColors.contentPrimary(context).withOpacity(0.8),
          ),
        ),
      ],
    ),
  );
}
