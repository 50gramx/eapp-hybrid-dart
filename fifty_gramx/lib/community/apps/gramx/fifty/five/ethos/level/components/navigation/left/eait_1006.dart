import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/app_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1006 extends StatelessWidget {
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold navigationWidget;

  // This will keep track of the usage frequency of each item.
  final Map<int, int> usageCount = {};

  EAIT1006({
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.navigationWidget,
  });

  @override
  Widget build(BuildContext context) {
    print("building EAIT1006");
    print(
        "length: ${AppFlowManager.instance.getEutopiaNavigationBarSectionalItems()!.length}");

    // Calculate the width of the screen
    double screenWidth = MediaQuery.of(context).size.width;

    // Define the width of each item (68 as per your existing code)
    double itemWidth = 68 + 16;

    // Calculate the number of items that can fit in the screen width
    int maxVisibleItems = (screenWidth / itemWidth).floor();

    // Ensure we don't exceed the total number of items available
    int itemCount =
        AppFlowManager.instance.getEutopiaNavigationBarSectionalItems()!.length;
    int visibleItemCount =
        itemCount < maxVisibleItems ? itemCount : maxVisibleItems;

    // Get the top most accessed items based on the usage count
    List<int> topUsedItems = getTopUsedItems(visibleItemCount);

    // ListView Container
    Widget container = Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      height: 48,
      width: visibleItemCount * itemWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: topUsedItems.map((int subIndex) {
          return Container(
            width: itemWidth,
            child: buildAppButton(context, subIndex,
                _interceptedSelectPressedSectionItem, navigationWidget),
          );
        }).toList(),
      ),
    );

    // Neumorphic Container
    Widget neuContainer = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.concave,
        depth: -6,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 16),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: container,
    );

    return Visibility(
      visible: navigationViewPort == 2 || navigationViewPort == 3,
      child: neuContainer,
    );
  }

  // Wrapper function to intercept the call and update usage count
  void _interceptedSelectPressedSectionItem(int index) {
    // Update the usage count for the selected item
    if (usageCount.containsKey(index)) {
      usageCount[index] = usageCount[index]! + 1;
    } else {
      usageCount[index] = 1;
    }

    // Call the original selectPressedSectionItem function
    selectPressedSectionItem(index);
  }

  // Function to get top most used items based on the screen size limit
  List<int> getTopUsedItems(int limit) {
    // If usageCount is empty, initialize it with zero values for all items
    if (usageCount.isEmpty) {
      for (int i = 0;
          i <
              AppFlowManager.instance
                  .getEutopiaNavigationBarSectionalItems()!
                  .length;
          i++) {
        usageCount[i] = 0;
      }
    }

    // Sort the map entries by usage count in descending order
    List<MapEntry<int, int>> sortedUsageCount = usageCount.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    // Take the top 'limit' items based on usage
    return sortedUsageCount.take(limit).map((entry) => entry.key).toList();
  }
}
