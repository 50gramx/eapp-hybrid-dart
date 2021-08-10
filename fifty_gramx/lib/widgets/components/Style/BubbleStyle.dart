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
