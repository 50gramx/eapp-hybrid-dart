import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildAppPageButton(
    BuildContext context,
    int subIndex,
    Function(int) selectPressedSectionItem,
    EutopiaLeftNavigationScaffold parentWidget) {
  bool isSelected = (subIndex == parentWidget.selectedChildrenIndex);

  var selectedItem = AppFlowManager.instance
      .getEutopiaNavigationBarSectionalItems()![subIndex]
      .leftNavigationBarSectionalItem;

  return NeumorphicButton(
      provideHapticFeedback: true,
      onPressed: () {
        selectPressedSectionItem(subIndex);
      },
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundPrimary(context),
        depth: -2,
        disableDepth: true,
        border: NeumorphicBorder(
          isEnabled: true,
          color: isSelected
              ? AppColors.backgroundPrimary(context)
              : AppColors.backgroundPrimary(context),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2, right: 2),
            child: Icon(
              selectedItem.icon,
              size: isSelected ? 12 : 10,
              color: isSelected
                  ? AppColors.contentPrimary(context)
                  : AppColors.contentTertiary(context),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 2),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "${selectedItem.label}",
                  style: TextStyle(
                      color: isSelected
                          ? AppColors.contentPrimary(context)
                          : AppColors.contentTertiary(context),
                      fontSize: isSelected ? 12 : 12,
                      fontFamily: "Montserrat",
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w500),
                )
              ]),
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ));
}
