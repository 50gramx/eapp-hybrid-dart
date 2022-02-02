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

import 'dart:ui';

import 'package:bubble/bubble.dart';
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/material.dart';

class MessageBubbleStyle {
  styleReceivedMessage(BuildContext context) {
    return BubbleStyle(
      color: AppColors.backgroundPrimary(context),
      elevation: 0,
      radius: Radius.circular(20),
      margin: BubbleEdges.only(top: 12, right: 50, left: 8),
      padding: BubbleEdges.only(left: 0, bottom: 0, right: 0, top: 0),
      alignment: Alignment.topLeft,
    );
  }

  styleSentMessage(BuildContext context) {
    return BubbleStyle(
      color: AppColors.backgroundInversePrimary(context),
      elevation: 0,
      radius: Radius.circular(20),
      margin: BubbleEdges.only(top: 8, left: 50, right: 8),
      padding: BubbleEdges.only(left: 0, bottom: 0, right: 0, top: 0),
      alignment: Alignment.topRight,
    );
  }
}
