/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'dart:async';
import 'dart:ui';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/focus_pane_tab.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/services/product/service/domain/createSpaceServiceDomainService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// Page that displays its index, flow's title and color.
///
/// Has a button for pushing another one of its kind with an incremented index,
///  and another button for starting a new flow named 'New' with
/// a random background color.

class TopPicksPage extends StatefulWidget {
  const TopPicksPage({
    required this.index,
    required this.containingFlowTitle,
    required this.focusPaneKey,
    required this.focusPaneShift,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;
  final String focusPaneKey;
  final Function(String) focusPaneShift;

  @override
  State<TopPicksPage> createState() {
    return _TopPicksPageState();
  }
}

class _TopPicksPageState extends State<TopPicksPage> {
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            expandedHeight: 260.0,
            backgroundColor: AppColors.backgroundPrimary(context),
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var collapseRatio = (constraints.maxHeight - kToolbarHeight) /
                    (200 - kToolbarHeight);
                if (collapseRatio < 0.6) {
                  NotificationsBloc.instance.newNotification(LocalNotification(
                    "OpenPagesPane",
                    {
                      "subType": "Spaces Toggle Search",
                      "searchCollapsed": true
                    },
                  ));
                  // toggleSearchOnTop();
                } else if (collapseRatio >= 0.6) {
                  NotificationsBloc.instance.newNotification(LocalNotification(
                    "OpenPagesPane",
                    {
                      "subType": "Spaces Toggle Search",
                      "searchCollapsed": false
                    },
                  ));
                  // toggleSearchOnTop();
                }

                return FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      // Background content (50GRAMx title and search bar)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (collapseRatio >= 0.6) ...[
                            SizedBox(
                                height: MediaQuery.of(context)
                                    .padding
                                    .top), // Padding to top
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                "evo",
                                style: TextStyle(
                                  fontSize: 64,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.contentPrimary(context),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            FractionallySizedBox(
                              widthFactor:
                                  0.7, // Adjusted width to 70% of the screen
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Neumorphic(
                                  child: TextField(
                                    style: AppTextStyle.themeTitleTextStyle(
                                        context),
                                    cursorColor:
                                        AppColors.contentPrimary(context),
                                    decoration: InputDecoration(
                                      hintText: "Search ethosverse",
                                      hintStyle: TextStyle(
                                          color: AppColors.contentSecondary(
                                              context),
                                          fontSize: 16,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w400,
                                          height: 1.5),
                                      contentPadding:
                                          EdgeInsets.fromLTRB(8, 12, 16, 0),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color:
                                            AppColors.contentSecondary(context),
                                      ),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                  ),
                                  style: NeumorphicStyle(
                                    lightSource:
                                        NeumorphicTheme.isUsingDark(context)
                                            ? LightSource.bottomRight
                                            : LightSource.topLeft,
                                    shadowLightColor:
                                        NeumorphicTheme.isUsingDark(context)
                                            ? AppColors.gray600
                                            : AppColors.backgroundSecondary(
                                                context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color: AppColors.backgroundSecondary(
                                          context),
                                      width: 2,
                                    ),
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(24)),
                                    color: AppColors.backgroundPrimary(context),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 64),
                            FocusPaneTab(
                              focusPaneKey: widget.focusPaneKey,
                              focusPaneShift: widget.focusPaneShift,
                            ),
                            SizedBox(height: 10),
                          ],
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverSafeArea(
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  // Choose which item to display based on the index
                  if (index == 0) {
                    return FeaturedItem(
                      featuredItem: FeaturedItemModel(
                        category: "Essentials",
                        title: "Podeage - Ubuntu VM",
                        subtitle: "General Purpose Desktop",
                        imageUrl:
                            'https://img.freepik.com/free-vector/cartoon-working-day-scene-illustration_52683-62609.jpg?t=st=1730302781~exp=1730306381~hmac=0afff6db431add9c3fc61137efdcbdb67ef954c101e5a1f65cd5a85398029d73&w=540',
                        iconUrl:
                            'https://pbs.twimg.com/profile_images/1630964842197573632/X5VCQoYL_400x400.jpg',
                        price: 4.99,
                        description:
                            "Experience Ubuntu in a high-performance virtual environment.",
                        ratings: [], // Ratings might be empty
                        ratingsText: "35 Ratings",
                        ratingValue: "4.5",
                        ratingStars: "⭐ ⭐ ⭐ ⭐ ⭐",
                        ageText: "4+",
                        chartNumber: "No. 10",
                        developerName: "Pixelmator Team",
                        language: "EN",
                        size: "685.8",
                        buyNowText: "",
                        tagline: "Ya yay",
                      ),
                    );
                  } else if (index == 1) {
                    return FeaturedItem(
                      featuredItem: FeaturedItemModel(
                        category: "Essentials",
                        title: "Jupyter Notebook",
                        subtitle: "Data Science Environment",
                        imageUrl:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/800px-Jupyter_logo.svg.png',
                        iconUrl:
                            'https://pbs.twimg.com/profile_images/1630964842197573632/X5VCQoYL_400x400.jpg',
                        price: 2.79, // Jupyter Notebook can be free
                        description:
                            "A powerful open-source environment for data analysis and machine learning.",
                        ratings: [], // Ratings might be empty
                        ratingsText: "50 Ratings",
                        ratingValue: "4.7",
                        ratingStars: "⭐ ⭐ ⭐ ⭐ ⭐",
                        ageText: "All Ages",
                        chartNumber: "No. 5",
                        developerName: "Jupyter Team",
                        language: "EN",
                        size: "150.4",
                        buyNowText: "",
                        tagline: "Open-source & Free",
                      ),
                    );
                  } else {
                    return FeaturedItem(
                      featuredItem: FeaturedItemModel(
                        category: "Huge Savings",
                        title: "Monthly Deployments",
                        subtitle: "Quick Start Deployment Service",
                        imageUrl:
                            'https://www.mega.com/sites/tera/files/2023-10/what-is-a-cloud-deployment-model.webp',
                        iconUrl:
                            'https://cdn-icons-png.flaticon.com/512/2919/2919592.png',
                        price: 0, // Could vary based on configuration and usage
                        description:
                            "Easily deploy single pods with custom configurations and hardware requirements.",
                        ratings: [], // Placeholder for user ratings
                        ratingsText: "20 Ratings",
                        ratingValue: "4.5",
                        ratingStars: "⭐ ⭐ ⭐ ⭐ ⭐",
                        ageText: "Tech Savvy Users",
                        chartNumber: "No. 3",
                        developerName: "Ethos Foundations",
                        language: "EN",
                        size: "250 MB",
                        buyNowText: "Deploy Now",
                        tagline: "Instant Pod Deployments",
                      ),
                    );
                  }
                },
                childCount:
                    3, // Number of featured items (2 for Ubuntu and Jupyter)
              ),
            ),
            minimum: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.07,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Trending",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return TrendingItem();
              },
              childCount: 1, // Number of trending items
            ),
          ),
        ]));
  }
}

class FeaturedItemModel {
  final String category;
  String title;
  final String subtitle;

  final String iconUrl;
  double price;
  String description;
  List<Map<String, dynamic>> ratings;

  String imageUrl;
  String tagline;
  String buyNowText;

  // fields for CollarInfoBar
  String ratingsText; // "35 Ratings"
  String ratingValue; // "4.5"
  String ratingStars; // "⭐ ⭐ ⭐ ⭐ ⭐"
  String ageText; // "4+" (Age)
  String chartNumber; // "No. 10" (Chart)
  String developerName; // "Pixelmator Team"
  String language; // "EN"
  String size; // "685.8" (Size in MB)

  FeaturedItemModel({
    required this.category,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.iconUrl,
    required this.price,
    required this.description,
    required this.ratings,
    required this.ratingsText,
    required this.ratingValue,
    required this.ratingStars,
    required this.ageText,
    required this.chartNumber,
    required this.developerName,
    required this.language,
    required this.size,
    required this.tagline,
    required this.buyNowText,
  });

  // Update the model if ratings are missing
  void updateRatingsIfNeeded() {
    if (ratings.isEmpty) {
      ratings = [
        {"stars": 5, "value": 0.8},
        {"stars": 4, "value": 0.6},
        {"stars": 3, "value": 0.4},
        {"stars": 2, "value": 0.2},
        {"stars": 1, "value": 0.3},
      ];
    }
  }

  // Update the model if a field is missing
  void updateIfMissing() {
    if (tagline.isEmpty) {
      tagline = "Creator"; // Default tagline if missing
    }
    if (title.isEmpty) {
      title = "Default Product"; // Default name if missing
    }
    if (imageUrl.isEmpty) {
      imageUrl =
          'https://pbs.twimg.com/profile_images/1630964842197573632/X5VCQoYL_400x400.jpg'; // Default image
    }
    if (description.isEmpty) {
      description = "Product description not available."; // Default description
    }
    if (price == 0) {
      price = 29.99; // Default price
    }
    if (buyNowText.isEmpty) {
      buyNowText = "Buy Now"; // Default buy now text
    }
  }
}

class FeaturedItem extends StatelessWidget {
  final FeaturedItemModel featuredItem;

  FeaturedItem({required this.featuredItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        color: AppColors.backgroundSecondary(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First row with three text items
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    featuredItem.category.toUpperCase(),
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        color: AppColors.platinum2(context)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    featuredItem.title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Montserrat",
                        color: AppColors.contentPrimary(context)),
                  ),
                  Text(
                    featuredItem.subtitle,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Montserrat",
                        color: AppColors.contentSecondary(context)),
                  ),
                ],
              ),
            ),
            // Second row with background image and details row
            Expanded(
              child: Stack(
                children: [
                  // Background Image
                  Positioned.fill(
                    child: Image.network(
                      featuredItem.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Overlay content at the bottom
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            color: Colors.white.withOpacity(0.2),
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                // App Icon
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    featuredItem.iconUrl,
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                SizedBox(width: 8),
                                // App Name
                                Expanded(
                                  child: Text(
                                    featuredItem.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                ),
                                // Buy Button with Price
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        AppColors.backgroundInverseSecondary(
                                            context),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    _showNeumorphicGlassModal(
                                        context, featuredItem);
                                  },
                                  child: Text(
                                    featuredItem.price != 0.0
                                        ? "\$${featuredItem.price}"
                                        : "FREE",
                                    style: TextStyle(
                                      color: AppColors.contentInverseSecondary(
                                          context),
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        _showNeumorphicGlassModal(context, featuredItem);
      },
    );
  }

  void callCreateService() async {
    var response = await CreateSpaceServiceDomainService.createDC499999998SSD(
        "name", "description", false);
    print("callCreateService: $response");
  }

  void _showNeumorphicGlassModal(
      BuildContext context, FeaturedItemModel featuredItem) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Center(
            child: Neumorphic(
              style: NeumorphicStyle(
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                color: AppColors.backgroundPrimary(context),
                border: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.backgroundPrimary(context),
                  width: 2,
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.height * 0.7,
                child: Stack(
                  children: [
                    // Sticky Header Section
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: ProductInfoWidget(
                        product: featuredItem,
                      ),
                    ),
                    // Scrollable Content
                    Positioned(
                      top: 148,
                      left: 0,
                      right: 0,
                      bottom: 70,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CollarInfoBar(
                              featuredItem: featuredItem,
                            ),
                            // Displaying dynamic content using model data
                            Text(
                              featuredItem.title,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              featuredItem.subtitle,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]),
                            ),
                            SizedBox(height: 16),
                            // Image Section
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                featuredItem.imageUrl,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            SizedBox(height: 24),

                            // Product Category
                            Text(
                              "Category: ${featuredItem.category}",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[800]),
                            ),
                            SizedBox(height: 16),

                            // Product Description
                            Text(
                              featuredItem.description,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            SizedBox(height: 24),

                            // Pricing
                            Text(
                              "Price: \$${featuredItem.price}",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 24),

                            // Ratings Section
                            Text(
                              "Ratings",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            RatingBar(
                              featuredItem: featuredItem,
                            ),
                            SizedBox(height: 24),

                            // Reviews Section
                            Text(
                              "Reviews",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            SizedBox(height: 24),

                            // What's New Section
                            Text(
                              "What's New",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "- Improved performance for VM tasks.\n- Enhanced stability on Ubuntu 22.04.\n- Bug fixes and security updates.",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[800],
                              ),
                            ),
                            SizedBox(height: 24),

                            // Collar Privacy Section
                            Text(
                              "Collar Privacy",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            SizedBox(height: 24),

                            // Product Information Section
                            Text(
                              "Information",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            SizedBox(height: 8),

                            // More from creators
                            Text(
                              "More from creators",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    // Sticky Buy Button
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: AppColors.backgroundPrimary(context),
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Cancel Button
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ),
                            // Buy Button
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              onPressed: () {
                                callCreateService();
                              },
                              child: Text(
                                "Buy for \$${featuredItem.price}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TrendingItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.star),
      title: Text("Trending Item"),
      subtitle: Text("Description"),
    );
  }
}

class RatingBar extends StatelessWidget {
  final FeaturedItemModel featuredItem;

  RatingBar({required this.featuredItem});

  @override
  Widget build(BuildContext context) {
    // If no ratings data is available, use default values
    final List<Map<String, dynamic>> ratings = featuredItem.ratings.isNotEmpty
        ? featuredItem.ratings
        : [
            {"stars": 5, "value": 0.8},
            {"stars": 4, "value": 0.6},
            {"stars": 3, "value": 0.4},
            {"stars": 2, "value": 0.2},
            {"stars": 1, "value": 0.3},
          ];

    return Column(
      children: ratings.map((rating) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Star icon
            Icon(Icons.star, color: Colors.green, size: 20),
            SizedBox(width: 4),
            // Star rating number
            Text(
              rating['stars'].toString(),
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(width: 8),
            // Progress bar
            Expanded(
              child: LinearProgressIndicator(
                value: rating['value'],
                backgroundColor: Colors.grey[800],
                color: Colors.green,
                minHeight: 8,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

class CollarInfoBar extends StatelessWidget {
  final FeaturedItemModel featuredItem;

  CollarInfoBar({required this.featuredItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Individual info blocks using data from the model
          _buildInfoBlock(featuredItem.ratingsText, featuredItem.ratingValue,
              featuredItem.ratingStars),
          _buildInfoBlock("Age", featuredItem.ageText, "Years Old"),
          _buildInfoBlock("Chart", featuredItem.chartNumber, "Photo & Video"),
          _buildInfoBlock("Developer", featuredItem.developerName, "👤"),
          _buildInfoBlock("Language", featuredItem.language, "+ 10 More"),
          _buildInfoBlock("Size", featuredItem.size, "MB"),
        ],
      ),
    );
  }

  Widget _buildInfoBlock(String title, String value, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class ProductInfoWidget extends StatefulWidget {
  final FeaturedItemModel product;

  ProductInfoWidget({required this.product});

  @override
  _ProductInfoWidgetState createState() => _ProductInfoWidgetState();
}

class _ProductInfoWidgetState extends State<ProductInfoWidget> {
  String tagline = "Creator"; // Initial tagline
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Update model if needed
    widget.product.updateIfMissing();

    // Start the tagline timer
    _startTaglineTimer();
  }

  void _startTaglineTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        // Toggle between "Creator" and "Tagline"
        tagline = (tagline == "Creator") ? "Tagline" : "Creator";
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[900], // Adjust your background color
      child: Row(
        children: [
          // Logo on the left
          Image.network(
            widget.product.imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 16),

          // Name, tagline, and button in a column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.title,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 8),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: Text(
                    tagline,
                    key: ValueKey(tagline),
                    style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                  ),
                ),
                SizedBox(height: 16),
                // Buy button
                ElevatedButton(
                  onPressed: () {
                    // Action for the buy button
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Button color
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text(
                    widget.product.buyNowText,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          // Icon buttons on the right
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.bookmark_border, color: Colors.white),
                onPressed: () {
                  // Action for save button
                },
              ),
              IconButton(
                icon: Icon(Icons.share, color: Colors.white),
                onPressed: () {
                  // Action for share button
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
