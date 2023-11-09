import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/community_logo.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1008.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/page_tab_pane.dart';
import 'package:flutter/widgets.dart';

class EAIT1002 extends StatelessWidget {
  final bool focusMode;
  final bool isNavigatingLeft;
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final Widget windowPane;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1002({
    required this.focusMode,
    required this.isNavigatingLeft,
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.windowPane,
    required this.navigationWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Visibility(
            visible: focusMode,
            child: Expanded(
              flex: 1,
              child: Row(
                children: [
                  CommunityLogo(),
                  Expanded(
                    child: PageTabPane(
                      selectPressedSectionItem: selectPressedSectionItem,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: isNavigatingLeft ? 11 : 8,
            child: windowPane,
          ),
          EAIT1008(
            isNavigatingLeft: isNavigatingLeft,
            navigationViewPort: navigationViewPort,
            selectPressedSectionItem: selectPressedSectionItem,
            navigationWidget: navigationWidget,
          ),
        ],
      ),
    );
  }
}
