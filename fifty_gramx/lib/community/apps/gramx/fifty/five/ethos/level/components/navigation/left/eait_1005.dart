import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/app_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1005 extends StatefulWidget {
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1005({
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.navigationWidget,
  });

  @override
  _EAIT1005State createState() => _EAIT1005State();
}

class _EAIT1005State extends State<EAIT1005> {
  final Map<int, int> usageCount = {};

  @override
  void initState() {
    super.initState();
    _updateUsageCount();
  }

  void _updateUsageCount() {
    // Update usage count for current items
    for (int i = 0;
        i < EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length;
        i++) {
      if (!usageCount.containsKey(i)) {
        usageCount[i] = 0;
      }
    }
    // Remove counts for items that no longer exist
    usageCount.removeWhere((key, value) =>
        key >= EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length);
  }

  @override
  Widget build(BuildContext context) {
    print("building EAIT1005");

    // Update the usage count to reflect any changes in the items
    _updateUsageCount();

    double screenHeight = MediaQuery.of(context).size.height;
    double itemHeight = 51; // Adjust as necessary
    int maxVisibleItems = ((screenHeight * 0.9) / itemHeight).floor();
    int itemCount = EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length;
    int visibleItemCount =
        itemCount < maxVisibleItems ? itemCount : maxVisibleItems;
    print("itemCount: ${itemCount}, visibleItemCount: $visibleItemCount");

    List<int> topUsedItems = getTopUsedItems(visibleItemCount);
    print("topUsedItems: $topUsedItems");

    Widget container = Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      height: visibleItemCount * itemHeight,
      child: Neumorphic(
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.concave,
          depth: -6,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.all(Radius.circular(24))),
          color: AppColors.backgroundInverseSecondary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 2,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          children: topUsedItems.map((int subIndex) {
            return buildAppButton(
              context,
              subIndex,
              _interceptedSelectPressedSectionItem,
              widget.navigationWidget,
            );
          }).toList(),
        ),
      ),
    );

    return Visibility(
      visible: widget.navigationViewPort >= 4 && widget.navigationViewPort <= 7,
      child: container,
    );
  }

  void _interceptedSelectPressedSectionItem(int index) {
    setState(() {
      usageCount[index] =
          (usageCount[index] ?? 0) + 1; // Update the usage count
    });
    widget.selectPressedSectionItem(index); // Call the original function
  }

  List<int> getTopUsedItems(int limit) {
    var sortedUsageCount = usageCount.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sortedUsageCount.take(limit).map((entry) => entry.key).toList();
  }
}
