import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

class PageHeaderConfig {
  final String header;
  final List<Map<String, String>> items;

  PageHeaderConfig({required this.header, required this.items});

  // New method to build SliverAppBar directly
  SliverAppBar buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      title: buildAppBarTitle(context),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      shadowColor: AppColors.backgroundPrimary(context),
      foregroundColor: AppColors.backgroundPrimary(context),
      surfaceTintColor: AppColors.backgroundPrimary(context),
      centerTitle: false,
      flexibleSpace: buildAppBarFlexibleSpaceBar(context),
      pinned: true,
      stretch: true,
      actions: buildAppBarActions(context),
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }

  // Method to build the title based on the layout
  Widget buildAppBarTitle(BuildContext context) {
    if (LayoutBreakpoint().isNavigatingLeft(context)) {
      return buildLeftNavigationAppBarTitle(context);
    } else {
      return buildBottomNavigationAppBarTitle(context);
    }
  }

  Widget buildLeftNavigationAppBarTitle(BuildContext context) {
    return Row(
      children: [
        buildTappableTitleText(context),
      ],
    );
  }

  Widget buildBottomNavigationAppBarTitle(BuildContext context) {
    return buildTappableTitleText(context); // Existing title widget
  }

  Widget buildTappableTitleText(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, items.first['route']!);
      },
      child: buildTitleText(context),
    );
  }

  Widget buildTitleText(BuildContext context) {
    return Text(
      header,
      maxLines: 1,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: AppColors.contentPrimary(context),
          fontSize: LayoutBreakpoint().isNavigatingLeft(context) ? 24 : 12,
          fontFamily: "Montserrat",
          fontWeight: LayoutBreakpoint().isNavigatingLeft(context)
              ? FontWeight.w500
              : FontWeight.w500),
    );
  }

  FlexibleSpaceBar buildAppBarFlexibleSpaceBar(BuildContext context) {
    if (LayoutBreakpoint().isNavigatingLeft(context)) {
      return FlexibleSpaceBar();
    } else {
      return FlexibleSpaceBar(
          background: Stack(
        children: [
          // Your background widgets here
          Positioned(
            bottom: 0,
            top: 2,
            left: 98,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: buildSubHeaderActions(context),
            ),
          ),
        ],
      ));
    }
  }

  List<Widget> buildAppBarActions(BuildContext context) {
    if (LayoutBreakpoint().isNavigatingLeft(context)) {
      return buildLeftNavigationActions(context);
    } else {
      return [];
    }
  }

  List<Widget> buildLeftNavigationActions(BuildContext context) {
    return buildActions(context);
  }

  List<Widget> buildActions(BuildContext context) {
    return items.map((item) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            item['route']!,
          );
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Container(
            padding: EdgeInsets.only(left: 6, right: 6),
            alignment: Alignment.center,
            child: NeumorphicText(
              item['title']!,
              style: NeumorphicStyle(
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                color: AppColors.contentPrimary(context),
                depth: 2,
                disableDepth: false,
                border: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.backgroundInverseTertiary(context),
                  width: 0.3,
                ),
              ),
              textAlign: TextAlign.left,
              textStyle: NeumorphicTextStyle(
                fontSize: 20,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                height: 1.25,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  Widget buildSubHeaderActions(BuildContext context) {
    return Container(
      height: 50, // Adjust the height as needed
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: items.map((item) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                item['route']!,
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                alignment: Alignment.center,
                child: NeumorphicText(
                  item['title']!,
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                    color: AppColors.contentPrimary(context),
                    depth: 2,
                    disableDepth: false,
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundInverseTertiary(context),
                      width: 0.3,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  textStyle: NeumorphicTextStyle(
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w300,
                    height: 1.25,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<PopupMenuItem> buildMenu(BuildContext context) {
    return items.map((item) {
      return PopupMenuItem(
        child: ListTile(
          title: Text(
            item['title']!,
            textAlign: TextAlign.center,
            style: AppTextStyle.appTextStyle(context),
          ),
          trailing: item['route']!.startsWith('http://') ||
                  item['route']!.startsWith('https://')
              ? Icon(
                  FeatherIcons.arrowUpRight,
                  color: AppColors.contentPrimary(context),
                  size: 18,
                )
              : null, // Show icon if the link opens in a new tab
          onTap: () {
            if (item['route']!.startsWith('http://') ||
                item['route']!.startsWith('https://')) {
              _launchURL(item['route']!);
            } else {
              Navigator.pop(context); // Close popup menu
              Navigator.pushNamed(context, item['route']!);
            }
          },
        ),
      );
    }).toList();
  }

  Widget buildPopupMenuButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return buildMenu(context);
        },
        child: Row(
          children: [
            buildAppBarTextButton(header, context),
            Icon(Icons.arrow_drop_down,
                color: AppColors.contentPrimary(context)),
          ],
        ),
        padding: EdgeInsets.zero,
        elevation: 6,
        position: PopupMenuPosition.under,
        color: AppColors.backgroundPrimary(context),
        shape: BeveledRectangleBorder(),
        tooltip: "",
      ),
    );
  }

  Widget buildAppBarTextButton(String title, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6),
      alignment: Alignment.center,
      child: NeumorphicText(
        title,
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
              topRight: Radius.circular(24), bottomRight: Radius.circular(24))),
          color: AppColors.contentPrimary(context),
          depth: 2,
          disableDepth: false,
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 0.3,
          ),
        ),
        textAlign: TextAlign.left,
        textStyle: NeumorphicTextStyle(
            fontSize: 20,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            height: 1.25),
      ),
    );
  }

  Widget buildCollapsibleMenu(BuildContext context) {
    return ExpansionTile(
      title: Text(
        header,
        style: AppTextStyle.appTextStyle(context).copyWith(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.contentPrimary(context),
        ),
      ),
      children: items.map((item) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          title: Text(
            item['title']!,
            style: AppTextStyle.appTextStyle(context).copyWith(
              fontSize: 16,
              color: AppColors.contentPrimary(context),
            ),
          ),
          onTap: () {
            Navigator.pop(context); // Close drawer before navigating
            if (item['route']!.startsWith('http')) {
              _launchURL(item['route']!);
            } else {
              Navigator.pushNamed(context, item['route']!);
            }
          },
        );
      }).toList(),
    );
  }
}
