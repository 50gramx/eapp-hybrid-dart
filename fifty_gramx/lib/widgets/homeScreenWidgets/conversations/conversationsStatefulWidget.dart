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
import 'package:fifty_gramx/widgets/components/listItem/compact/artworknone/chevronWithLabelTrailing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConversationsStatefulWidget extends StatefulWidget {
  const ConversationsStatefulWidget({Key? key}) : super(key: key);

  @override
  State<ConversationsStatefulWidget> createState() =>
      _ConversationsStatefulWidgetState();
}

class _ConversationsStatefulWidgetState
    extends State<ConversationsStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChevronWithLabelTrailing(
            labelText: 'Pinned Conversations',
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: AppColors.lightNeuPrimaryBackground,
              )
            ],
          )
        ],
      ),
    );
  }
}
