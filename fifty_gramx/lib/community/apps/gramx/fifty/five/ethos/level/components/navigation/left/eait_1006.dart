import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/AdaptiveIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/app_button.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1006 extends StatelessWidget {
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1006(
      {required this.navigationViewPort,
      required this.selectPressedSectionItem,
      required this.navigationWidget});

  @override
  Widget build(BuildContext context) {
    print("building EAIT1006");
    print(
        "length: ${EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length}");
    Widget container = Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      height: 48,
      width: EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length * 68,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length,
          itemBuilder: (BuildContext context, int subIndex) {
            return Expanded(
              child: Container(
                  child: buildAppButton(context, subIndex,
                      selectPressedSectionItem, navigationWidget),
                ),
            );
          }),
    );
    Widget neuContainer = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.concave,
        depth: -6,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 16),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: container,
    );
    return Visibility(
        visible: navigationViewPort == 2 || navigationViewPort == 3,
        child: container);
  }
}
