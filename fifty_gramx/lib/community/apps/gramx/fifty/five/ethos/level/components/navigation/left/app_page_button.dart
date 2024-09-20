import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildAppPageButton(
    BuildContext context,
    int subIndex,
    Function(int) selectPressedSectionItem,
    EutopiaLeftNavigationScaffold parentWidget) {
  bool isSelected = (subIndex == parentWidget.selectedIndex);

  return Neumorphic(
    style: NeumorphicStyle(
      border: NeumorphicBorder(
        isEnabled: true,
        color: AppColors.backgroundPrimary(context),
        width: 1,
      ),
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
    ),
    padding: const EdgeInsets.all(2),
    margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
    child: NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          selectPressedSectionItem(subIndex);
        },
        style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: isSelected
              ? AppColors.backgroundInverseTertiary(context)
              : AppColors.backgroundTertiary(context),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text:
                        "${EthosAppFlowBob.eutopiaNavigationBarSectionalItems[subIndex].leftNavigationBarSectionalItem.label}",
                    style: TextStyle(
                        color: isSelected
                            ? AppColors.contentInversePrimary(context)
                            : AppColors.contentSecondary(context),
                        fontSize: isSelected ? 16 : 14,
                        fontFamily: "Montserrat",
                        fontWeight:
                            isSelected ? FontWeight.w700 : FontWeight.w500),
                  )
                ]),
              ),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        )),
  );
}
