import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProgressContentListTile extends StatelessWidget {
  @override
  const ProgressContentListTile({
    Key? key,
    this.isContentActive = false,
    this.isLastMostTile = false,
    required this.contentActionButtonTitle,
    required this.contentWidget,
    this.isSecondaryButtonActive = false,
    this.secondaryButtonTitle = "Back",
    required this.primaryButtonOnPressed,
    required this.secondaryButtonOnPressed,
    this.isPrimaryButtonActive = true,
    this.isPrimaryButtonDisabled = false,
    this.tertiaryButtonWidget = const SizedBox(
      width: 1,
    ),
  }) : super(key: key);

  final Widget contentWidget;
  final bool isContentActive;
  final bool isLastMostTile;
  final String contentActionButtonTitle;
  final String secondaryButtonTitle;
  final bool isSecondaryButtonActive;
  final VoidCallback primaryButtonOnPressed;
  final VoidCallback secondaryButtonOnPressed;
  final bool isPrimaryButtonActive;
  final bool isPrimaryButtonDisabled;
  final Widget tertiaryButtonWidget;

  Widget build(BuildContext context) {
    return Visibility(
        visible: isContentActive,
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          minVerticalPadding: 0,
          title: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  width: 30.5,
                  color: AppColors.backgroundPrimary(context),
                ),
                Container(
                  margin: EdgeInsets.all(0),
                  width: 3,
                  color: isLastMostTile
                      ? AppColors.backgroundPrimary(context)
                      : AppColors.borderOpaque(context),
                ),
                Container(
                  width: 30.5,
                  color: AppColors.backgroundPrimary(context),
                ),
                Expanded(child: contentWidget),
                SizedBox(width: 32),
              ],
            ),
          ),
          subtitle: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 30.5,
                  color: AppColors.backgroundPrimary(context),
                ),
                Container(
                  width: 3,
                  color: isLastMostTile
                      ? AppColors.backgroundPrimary(context)
                      : AppColors.borderOpaque(context),
                ),
                Container(
                  width: 30.5,
                  color: AppColors.backgroundPrimary(context),
                ),
                isSecondaryButtonActive
                    ? ActionNeuButton(
                        buttonTitle: secondaryButtonTitle,
                        buttonActionOnPressed: () =>
                            {secondaryButtonOnPressed()},
                      )
                    : SizedBox(),
                isSecondaryButtonActive
                    ? SizedBox(
                        width: 12,
                      )
                    : SizedBox(),
                tertiaryButtonWidget,
                isPrimaryButtonActive
                    ? ActionNeuButton(
                        buttonTitle: contentActionButtonTitle,
                        buttonActionOnPressed: () => {primaryButtonOnPressed()},
                        isPrimaryButton: true,
                        isPrimaryButtonDisabled: isPrimaryButtonDisabled,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ));
  }
}
