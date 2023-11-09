import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/open_pages_pane.dart';
import 'package:flutter/material.dart';

class WindowPane extends StatelessWidget {
  final bool focusMode;
  final List<Widget> pagesStack;

  WindowPane({required this.focusMode, required this.pagesStack});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OpenPagesPane(focusMode: focusMode, pagesStack: pagesStack),
      ],
    );
  }
}
