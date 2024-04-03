import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PageHeaderConfig {
  final String header;
  final List<Map<String, String>> items;

  PageHeaderConfig({required this.header, required this.items});

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

  List<PopupMenuItem> buildMenu(BuildContext context) {
    return items.map((item) {
      return PopupMenuItem(
        child: ListTile(
          title: Text(
            item['title']!,
            textAlign: TextAlign.center,
            style: AppTextStyle.appTextStyle(context),
          ),
          onTap: () {
            Navigator.pop(context); // Close popup menu
            Navigator.pushNamed(context, item['route']!);
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
}
