import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/app_page_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PageTabPane extends StatelessWidget {
  final Function(int) selectPressedSectionItem;

  PageTabPane({required this.selectPressedSectionItem});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(bottom: 8, right: 16, left: 8, top: 16),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length,
        itemBuilder: (BuildContext context, int subIndex) {
          return buildAppPageButton(context, subIndex, selectPressedSectionItem);
        },
      ),
    );
  }
}
