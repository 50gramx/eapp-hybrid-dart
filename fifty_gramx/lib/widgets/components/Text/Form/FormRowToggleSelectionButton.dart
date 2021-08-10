import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/neuToggleButton.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FormRowToggleSelectionButton {
  final String formRowTitle;
  final List<NeuToggleButton> formRowNeuToggleButtonsList;
  final int selectedNeuToggleButtonIndex;
  final String contextLabel;
  final String contextDescriptionText;
  final List<String> contextDescriptionParaTexts;
  final String contextFooterLabelText;
  final bool toggleSelectionConfirm;

  FormRowToggleSelectionButton(
      this.contextLabel,
      this.formRowTitle,
      this.contextDescriptionText,
      this.contextDescriptionParaTexts,
      this.contextFooterLabelText,
      this.formRowNeuToggleButtonsList,
      this.selectedNeuToggleButtonIndex,
      this.toggleSelectionConfirm,
      );

  Widget build(BuildContext context) {
    List<Widget> contextDescriptionParaRows = [];
    for (var paraIndex = 0;
        paraIndex < contextDescriptionParaTexts.length;
        paraIndex++) {
      contextDescriptionParaRows.add(Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              FeatherIcons.checkCircle,
              size: 24,
              color: AppColors.accentColor,
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 8, right: 16, top: 16, bottom: 16),
                child: Text(
                  '${contextDescriptionParaTexts[paraIndex]}',
                  style: TextStyle(
                      color: AppColors.contentPrimary(context),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      height: 1.14285714),
                ),
              ),
            ),
          ),
        ],
      ));
    }

    return Align(
        alignment: Alignment.centerLeft,
        child: Neumorphic(
            style: NeumorphicStyle(
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
              color: AppColors.backgroundPrimary(context),
              border: NeumorphicBorder(
                isEnabled: true,
                color: AppColors.backgroundPrimary(context),
                width: 2,
              ),
            ),
            margin: const EdgeInsets.fromLTRB(6, 12, 6, 12),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: RichText(
                          text: TextSpan(
                            text: formRowTitle,
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                height: 1.14285714),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:
                      EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 8),
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: contextFooterLabelText == "" ? "" : "($contextFooterLabelText)  ",
                                style: TextStyle(
                                    color: AppColors.contentTertiary(context),
                                    fontSize: 10,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    height: 1.14285714),
                              ),
                              // TextSpan(
                              //   text: contextLabel,
                              //   style: TextStyle(
                              //       color: AppColors.contentTertiary(context),
                              //       fontSize: 12,
                              //       fontFamily: "Montserrat",
                              //       fontWeight: FontWeight.w500,
                              //       height: 1.14285714),
                              // ),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: AppColors.backgroundPrimary(context),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: RichText(
                          text: TextSpan(
                            text: contextDescriptionText,
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                height: 1.14285714),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: RichText(
                    text: TextSpan(
                      text: "Accessibility",
                      style: TextStyle(
                          color: AppColors.contentPrimary(context),
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          height: 1.14285714),
                    ),
                  ),
                ),
              ),
              Column(
                children: contextDescriptionParaRows,
              ),
              Neumorphic(
                margin: EdgeInsets.only(top: 16.0, bottom: 2.0),
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                  color: toggleSelectionConfirm ? AppColors.backgroundSecondary(context): AppColors.backgroundInverseSecondary(context),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  formRowNeuToggleButtonsList[selectedNeuToggleButtonIndex]
                      .build(context)
                ]),
              ),
            ])));
  }
}
