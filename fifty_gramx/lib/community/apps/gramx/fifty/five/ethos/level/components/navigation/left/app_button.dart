import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/AdaptiveIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildAppButton(
    BuildContext context,
    int subIndex,
    Function(int) selectPressedSectionItem,
    EutopiaLeftNavigationScaffold parentWidget) {
  print("building AppButton");
  String title = EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex]
      .leftNavigationBarSectionalItem.label!;
  print("title: $title");
  return AdaptiveNeuButton(
    buttonTitle: title,
    buttonActionOnPressed: () {
      selectPressedSectionItem(subIndex);
    },
    icon: EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex]
        .leftNavigationBarSectionalItem.icon,
    isCollapsed: false,
    isSelected: subIndex == parentWidget.selectedIndex,
  );
}
