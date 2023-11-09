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
  return AdaptiveNeuButton(
    buttonTitle: EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex]
        .leftNavigationBarSectionalItem.label!,
    buttonActionOnPressed: () {
      selectPressedSectionItem(subIndex);
    },
    icon: EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex]
        .leftNavigationBarSectionalItem.icon,
    isCollapsed: true,
    isSelected: subIndex == parentWidget.selectedIndex,
  );
}
