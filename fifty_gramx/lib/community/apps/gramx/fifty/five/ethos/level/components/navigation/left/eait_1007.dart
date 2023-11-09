import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1005.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1007 extends StatelessWidget {
  final bool isNavigatingLeft;
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1007(
      {required this.isNavigatingLeft,
      required this.navigationViewPort,
      required this.selectPressedSectionItem,
      required this.navigationWidget});

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isNavigatingLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            EAIT1005(
                navigationViewPort: navigationViewPort,
                selectPressedSectionItem: selectPressedSectionItem,
                navigationWidget: navigationWidget)
          ],
        ));
  }
}
