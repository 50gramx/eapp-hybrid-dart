import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/AdaptiveIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildAppButton(
    BuildContext context,
    int subIndex,
    Function(int) selectPressedSectionItem,
    EutopiaLeftNavigationScaffold parentWidget) {
  String title = AppFlowManager.instance
      .getEutopiaNavigationBarSectionalItems()![subIndex]
      .leftNavigationBarSectionalItem
      .label!;
  return AdaptiveNeuButton(
    buttonTitle: title,
    buttonActionOnPressed: () {
      selectPressedSectionItem(subIndex);
    },
    icon: AppFlowManager.instance
        .getEutopiaNavigationBarSectionalItems()![subIndex]
        .leftNavigationBarSectionalItem
        .icon,
    isCollapsed: false,
    isSelected: subIndex == parentWidget.selectedChildrenIndex,
  );
}
