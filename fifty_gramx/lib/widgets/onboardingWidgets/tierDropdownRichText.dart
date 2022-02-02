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
import 'package:flutter/widgets.dart';

class FreeTierDropDownRichText extends StatelessWidget {
  const FreeTierDropDownRichText({
    Key? key,
    required this.tierName,
  }) : super(key: key);

  final String tierName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.backgroundInverseSecondary(context),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 2, bottom: 2, right: 8, left: 8),
        child: Text(tierName,
            style: TextStyle(
                color: AppColors.contentInversePrimary(context),
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                height: 1.14285714)),
      ),
    );
  }
}