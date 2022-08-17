import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Style/AppTextStyle.dart';
import 'package:flutter/widgets.dart';

class FormInfoText {
  final String text;

  FormInfoText(this.text);

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: RichText(
          text: TextSpan(
            text: text,
            style: AppTextStyle.formInfoTextStyle(context),
          ),
        ),
      ),
    );
  }
}
