import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuToggleButton/neuToggleIconButtonContainer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/formatter/maskedTextInputFormatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CardNumberTextField extends StatelessWidget {
  @override
  const CardNumberTextField(
      {Key? key,
      required this.hintText,
      required this.cardNumberTextFieldController,
      required this.cardExpiryTextFieldController,
      required this.cardCvvTextFieldController,
      this.isTextFieldEnabled = true,
      this.isCardExpiryVisible = false,
      this.isCardCvvVisible = false,
      required this.cardExpiryTextFieldFocusNode,
      required this.cardCvvTextFieldFocusNode})
      : super(key: key);

  final hintText;
  final TextEditingController cardNumberTextFieldController;
  final TextEditingController cardExpiryTextFieldController;
  final TextEditingController cardCvvTextFieldController;
  final bool isTextFieldEnabled;
  final bool isCardExpiryVisible;
  final bool isCardCvvVisible;
  final FocusNode cardExpiryTextFieldFocusNode;
  final FocusNode cardCvvTextFieldFocusNode;

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
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundPrimary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundPrimary(context),
            width: 2,
          ),
        ),
        margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8, left: 32, right: 8),
                  child: Icon(
                    FeatherIcons.creditCard,
                    size: 24,
                    color: AppColors.contentPrimary(context),
                  ),
                ),
                Flexible(
                  child: TextField(
                    keyboardType: TextInputType.name,
                    enabled: isTextFieldEnabled,
                    style: AppTextStyle.themeTitleTextStyle(context),
                    controller: cardNumberTextFieldController,
                    inputFormatters: [
                      MaskedTextInputFormatter(
                          mask: 'xxxx-xxxx-xxxx-xxxx', separator: '-')
                    ],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      hintText: hintText,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 32, top: 4),
                          child: Text("Expiry", style: TextStyle(
                              color: AppColors.contentPrimary(context),
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.14285714),)
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: IntrinsicWidth(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: AppTextStyle.themeTitleTextStyle(context),
                            controller: cardExpiryTextFieldController,
                            inputFormatters: [
                              MaskedTextInputFormatter(
                                  mask: 'xx/xx', separator: '/')
                            ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 2),
                              hintText: "12/24",
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 32, right: 16, top: 4),
                          child: Text("CVV", style: TextStyle(
                              color: AppColors.contentPrimary(context),
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.14285714))
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 32),
                        child: IntrinsicWidth(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: AppTextStyle.themeTitleTextStyle(context),
                            controller: cardCvvTextFieldController,
                            inputFormatters: [
                              MaskedTextInputFormatter(mask: 'xxx', separator: '')
                            ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 2),
                              hintText: "123",
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
