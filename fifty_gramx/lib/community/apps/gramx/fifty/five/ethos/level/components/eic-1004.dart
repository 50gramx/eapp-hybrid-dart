import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';

/// Tile Header Component
///
/// Tile Header shows the label in an h6 text style
///
/// needs [label] as String
class EIC1004 extends StatefulWidget {
  const EIC1004({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  State<EIC1004> createState() => _EIC1004State();
}

class _EIC1004State extends State<EIC1004> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: RichText(
          text: TextSpan(
            text: widget.label.toUpperCase(),
            style: AppTextStyle.formInfoTextStyle(context),
          ),
        ),
      ),
    );
  }
}
