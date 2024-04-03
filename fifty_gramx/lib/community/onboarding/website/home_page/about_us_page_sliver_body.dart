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
              return _buildSection('About Company', '''
50GRAMx is a decentralized computing network that aims to create a community-driven and owned platform for processing data and knowledge sharing. The project was founded in 2020 by a single individual with the vision of creating a more resilient and community-driven internet and is currently in the early stages of development.

The name 50GRAMx is derived from three components: "50", "GRAM", and "x".

- The number 50 represents the maximum number of communities that can be part of a given Ethosverse, which is a collection of galaxies that share a common ethos and vision. Of the 50 communities, 49 will be open communities, and one will be a classical community that acts as a gateway to the wider internet.

- The word "GRAM" represents the weight of a community's collective knowledge and understanding,

- While the letter "x" represents the potential for limitless growth and evolution.

50GRAMx aims to create a decentralized network that empowers communities to collaborate and share knowledge without relying on centralized institutions. Each 50GRAMx Galaxy represents the collective processing power of a community, with each individual's knowledge contributing to the strength and resilience of the network as a whole. As more Galaxies join the network, the collective processing power and knowledge base of the community will grow, making it more robust and resistant to attacks.

The 50GRAMx network is built on a distributed computing infrastructure that allows community members to contribute their computing resources to the network in exchange for rewards in EthosCoin, the native cryptocurrency of the platform. These resources can be used to process data and run decentralized applications, allowing community members to earn rewards while contributing to the growth of the network.

50GRAMx is still in the early stages of development, with the team working on building out the infrastructure and onboarding new community members. The project aims to create a decentralized knowledge and processing power network that can help drive innovation and collaboration across diverse communities.
          ''');
            } else if (position == 1) {
              return _buildSection('Mission',
                  'Our mission is to create a decentralized computing network that empowers communities to collaborate and share knowledge without relying on centralized institutions.');
            } else if (position == 2) {
              return _buildSection('Vision',
                  'Our vision is to build a resilient and community-driven internet where every individual has the opportunity to contribute to and benefit from the collective knowledge of humanity.');
            } else if (position == 3) {
              return _buildSection('Office Address', """Floor No.: 4th FLOOR
Building No./Flat No.: UNIT FO-02
Road/Street: 28/A 80 FEET RD
Locality/Sub Locality: Indiranagar Bangalore
City/Town/Village: Bengaluru
District: Bengaluru Urban
State: Karnataka
PIN Code: 560038""");
            } else if (position == 4) {
              return _buildSection('GST Number', '29AAFCF7727D1ZI');
            } else {
              return SizedBox();
            }
          })
    ],
  );
}

Widget _buildSection(String title, String content) {
  return Container(
    margin: EdgeInsets.only(bottom: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          content,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    ),
  );
}
