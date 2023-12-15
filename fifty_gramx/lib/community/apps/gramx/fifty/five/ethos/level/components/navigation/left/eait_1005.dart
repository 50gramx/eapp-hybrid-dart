import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/app_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1005 extends StatelessWidget {
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold navigationWidget;

  EAIT1005(
      {required this.navigationViewPort,
      required this.selectPressedSectionItem,
      required this.navigationWidget});

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: navigationViewPort == 4 ||
            navigationViewPort == 5 ||
            navigationViewPort == 6 ||
            navigationViewPort == 7,
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          height:
          EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length * 57,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:
              EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length,
              itemBuilder: (BuildContext context, int subIndex) {
                return buildAppButton(context, subIndex,
                    selectPressedSectionItem, navigationWidget);
              }),
        ));
  }
}
