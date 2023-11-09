import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuChip.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildAppPageButton(BuildContext context, int subIndex,
    Function(int) selectPressedSectionItem) {
  return ActionNeuChip(
    chipAvatarText:
        "${EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex].leftNavigationBarSectionalItem.code}",
    chipTitle:
        "${EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex].leftNavigationBarSectionalItem.label}",
    chipIconBackgroundColor: AppColors.contentPrimary(context),
    buttonActionOnPressed: () {
      selectPressedSectionItem(subIndex);
    },
  );
}
