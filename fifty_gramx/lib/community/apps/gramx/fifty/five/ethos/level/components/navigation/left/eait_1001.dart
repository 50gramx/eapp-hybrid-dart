import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1007.dart';
import 'package:flutter/widgets.dart';

class EAIT1001 extends StatelessWidget {
  final bool isNavigatingLeft;
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1001({
    required this.isNavigatingLeft,
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.navigationWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: EAIT1007(
          isNavigatingLeft: isNavigatingLeft,
          navigationViewPort: navigationViewPort,
          selectPressedSectionItem: selectPressedSectionItem,
          navigationWidget: navigationWidget,
        ),
      ),
    );
  }
}
