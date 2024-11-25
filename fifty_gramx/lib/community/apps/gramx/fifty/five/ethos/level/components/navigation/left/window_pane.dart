import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/open_pages_pane.dart';
import 'package:flutter/material.dart';

class WindowPane extends StatelessWidget {
  final String focusPaneKey;
  final List<Widget> pagesStack;
  final List<Widget> ethosStack;
  final bool isEthosStackPagesVisible;
  final bool isCommunityStackPagesVisible;
  final Widget tilesPane;
  final Function() hideEthosStackPages;
  final Function() toggleSearchOnTop;
  final Widget openPagesTabs;
  final Function(String) focusPaneShift;
  final bool isAccountAvailable;
  final ValueChanged<bool> onAccountAvailability;

  WindowPane({
    required this.focusPaneKey,
    required this.pagesStack,
    required this.ethosStack,
    required this.isEthosStackPagesVisible,
    required this.isCommunityStackPagesVisible,
    required this.tilesPane,
    required this.hideEthosStackPages,
    required this.toggleSearchOnTop,
    required this.openPagesTabs,
    required this.focusPaneShift,
    required this.isAccountAvailable,
    required this.onAccountAvailability,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OpenPagesPane(
          focusPaneKey: focusPaneKey,
          pagesStack: pagesStack,
          ethosStack: ethosStack,
          isEthosStackPagesVisible: isEthosStackPagesVisible,
          isCommunityStackPagesVisible: isCommunityStackPagesVisible,
          hideEthosStackPages: hideEthosStackPages,
          toggleSearchOnTop: toggleSearchOnTop,
          openPagesTabs: openPagesTabs,
          focusPaneShift: focusPaneShift,
          isAccountAvailable: isAccountAvailable,
          onAccountAvailability: onAccountAvailability,
        ),
        tilesPane,
      ],
    );
  }
}
