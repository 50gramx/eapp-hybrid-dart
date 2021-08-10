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