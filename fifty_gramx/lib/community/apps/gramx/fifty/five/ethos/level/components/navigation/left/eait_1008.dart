import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1006.dart';
import 'package:flutter/widgets.dart';

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
    return Visibility(
      visible: false, // !isNavigatingLeft
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
