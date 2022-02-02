/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
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
