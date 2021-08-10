import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class LabelWithSupportParaWithMetaListItem extends StatelessWidget {
  @override
  const LabelWithSupportParaWithMetaListItem(
      {Key? key, required this.labelText, required this.supportParaText})
      : super(key: key);

  final String labelText;
  final String supportParaText;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: AppColors.lightNeuPrimary,
      ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(36)),
                color: AppColors.lightNeuPrimaryBackground,
              ),
              child: IconButton(
                icon: Icon(
                  FeatherIcons.shoppingCart,
                  size: 16,
                ),
                color: AppColors.lightNeuSecondary,
                onPressed: () {},
              ),
            ),
            title: Text(
              labelText,
              style: TextStyle(
                  color: AppColors.lightNeuSecondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.25),
            ),
            subtitle: Text(
              supportParaText,
              style: TextStyle(
                  color: AppColors.gray600,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.42857143),
            ),
            trailing: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(36)),
                color: AppColors.lightNeuPrimaryBackground,
              ),
              child: IconButton(

                icon: Icon(
                  FeatherIcons.shoppingCart,
                  size: 16,
                ),
                color: AppColors.lightNeuSecondary,
                onPressed: () {},
              ),
            ),
          ),
          Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 64.0, right: 16.0),
                  height: 1,
                  child: Divider(
                    color: AppColors.dividerColor,
                    thickness: 1,
                  )),
            ),
          ]),
        ],
      )
    );
  }
}
