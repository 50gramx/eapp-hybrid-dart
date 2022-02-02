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

import 'package:fifty_gramx/widgets/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemDisabledText.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemTitleText.dart';
import 'package:flutter/cupertino.dart';

class BasicConfigurationItem extends StatelessWidget {

  final String titleText;
  final String subtitleText;

  const BasicConfigurationItem({Key? key, required this.titleText, required this.subtitleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
        containerChild: Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: ListItemTitleTextWidget(titleText: titleText, disableNeu: true, fontSize: 18, fontWeight: FontWeight.w500,)),
              ListItemSubtitleTextWidget(subtitleText: subtitleText, disableNeu: true, fontSize: 18, fontWeight: FontWeight.w500,)
            ],
          ),
        )
    );
  }

}