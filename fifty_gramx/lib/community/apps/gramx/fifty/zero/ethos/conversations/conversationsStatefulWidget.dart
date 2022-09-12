import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/compact/artworknone/chevronWithLabelTrailing.dart';
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
