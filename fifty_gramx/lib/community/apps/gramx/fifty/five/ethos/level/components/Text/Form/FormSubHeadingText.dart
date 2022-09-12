import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter/widgets.dart';

class FormSubHeadingText {
  final String label;
  final String value;
  Color labelColor;
  Color valueColor;

  FormSubHeadingText(this.label, this.value, this.labelColor, this.valueColor);

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(label,
                    style: TextStyle(
                        color: labelColor,
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                        height: 1.14285714))),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text("$value",
                  style: TextStyle(
                      color: valueColor,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800,
                      height: 1.14285714))),
        ),
      ],
    );
  }
}
