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

class NeuToggleTextButtonContainer {
  final String buttonTitle;
  final String buttonSecondaryTitle;
  final bool isButtonDisabled;
  final bool isButtonSelected;
  final bool strikeThroughSecondaryTitle;

  NeuToggleTextButtonContainer(
      {required this.buttonTitle,
      required this.buttonSecondaryTitle,
      required this.isButtonDisabled,
      required this.isButtonSelected,
      this.strikeThroughSecondaryTitle = false});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      padding: EdgeInsets.symmetric(
          vertical: buttonSecondaryTitle == "" ? 16 : 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
      ),
      child: buttonSecondaryTitle == ""
          ? Text(buttonTitle,
              style: isButtonDisabled
                  ? AppTextStyle.buttonTextStyleDisabled(context)
                  : TextStyle(
                      color: isButtonSelected
                          ? AppColors.contentPrimary(context)
                          : AppColors.contentInversePrimary(context),
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500))
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(buttonTitle,
                    style: isButtonDisabled
                        ? AppTextStyle.buttonTextStyleDisabled(context)
                        : TextStyle(
                            color: isButtonSelected
                                ? AppColors.contentPrimary(context)
                                : AppColors.contentInversePrimary(context),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500)),
                Container(
                  child: Text(buttonSecondaryTitle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: isButtonDisabled
                              ? AppColors.contentStateDisabled(context)
                              : (isButtonSelected
                                  ? AppColors.contentSecondary(context)
                                  : AppColors.contentInverseSecondary(context)),
                          fontSize: 12,
                          decoration: strikeThroughSecondaryTitle ? TextDecoration.lineThrough : TextDecoration.none,
                          fontFamily: "Montserrat",
                          fontWeight: strikeThroughSecondaryTitle ? FontWeight.w300 : FontWeight.w400)),
                ),
              ],
            ),
    );
  }
}
