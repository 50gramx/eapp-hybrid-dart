import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1006.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1008 extends StatelessWidget {
  final bool isNavigatingLeft;
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1008({
    required this.isNavigatingLeft,
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.navigationWidget,
  });

  @override
  Widget build(BuildContext context) {
    bool isOneEappLoaded = AppFlowManager.instance
            .getEutopiaNavigationBarSectionalItems()!
            .length ==
        1;
    return Visibility(
      visible: isNavigatingLeft
          ? false
          : (isOneEappLoaded ? false : false), // todo: make it true when fixed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: EAIT1006(
              navigationViewPort: navigationViewPort,
              navigationWidget: navigationWidget,
              selectPressedSectionItem: selectPressedSectionItem,
            ),
          ),
        ],
      ),
    );
  }
}
