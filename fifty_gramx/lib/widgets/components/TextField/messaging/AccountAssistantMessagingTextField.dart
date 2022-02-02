/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuChip.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/domains/neuToggleSpaceKnowledgeDomainButtonContainer.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/neuToggleButton.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/neuToggleIconButtonContainer.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/neuToggleTextButtonContainer.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/TextField/messaging/domains/domainSelectionNeuChip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountAssistantMessageTextField extends StatelessWidget {
  @override
  const AccountAssistantMessageTextField({
    Key? key,
    required this.hintText,
    required this.messageTextFieldController,
    required this.sendMessageButtonOnPressed,
    required this.messageTextFieldReadOnly,
    required this.isSendButtonEnabled,
    required this.suggestedKnowledgeDomains,
    required this.isMessagingInputClosed,
    required this.isSuggestedDomainsClosed,
    required this.messagingInputToggleOnPressed,
    required this.suggestedDomainsToggleOnPressed,
  }) : super(key: key);

  final hintText;
  final TextEditingController messageTextFieldController;
  final VoidCallback sendMessageButtonOnPressed;
  final bool messageTextFieldReadOnly;
  final bool isSendButtonEnabled;
  final List<SpaceKnowledgeDomain> suggestedKnowledgeDomains;
  final bool isMessagingInputClosed;
  final bool isSuggestedDomainsClosed;
  final VoidCallback messagingInputToggleOnPressed;
  final Function(SpaceKnowledgeDomain) suggestedDomainsToggleOnPressed;

  Widget build(BuildContext context) {
    var profilePictureButton = Neumorphic(
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 3,
        ),
        disableDepth: true,
        lightSource: LightSource.right,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      padding: const EdgeInsets.all(2),
      child: NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          print("entity toggle pressed");
        },
        style: NeumorphicStyle(
          lightSource: LightSource.right,
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.contentPrimary(context),
        ),
        padding: const EdgeInsets.all(0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            "https://pbs.twimg.com/profile_images/1398518722948603906/py8p-c-l_400x400.jpg",
            height: 42.0,
            width: 42.0,
          ),
        ),
      ),
    );

    List<Widget> domainToggleTextButtonsList = [];
    List<bool> domainToggleTextButtonsSelectedList = [];
    for (var suggestedKnowledgeDomain in suggestedKnowledgeDomains) {
      domainToggleTextButtonsList.add(
          NeuToggleSpaceKnowledgeDomainButtonContainer(
                  spaceKnowledgeDomain: suggestedKnowledgeDomain,
                  isButtonDisabled: false,
                  isButtonSelected: false)
              .build(context));
      domainToggleTextButtonsSelectedList.add(false);
    }

    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: AppColors.backgroundSecondary(context),
        ),
        child: Column(
          children: [
            Visibility(
              visible: suggestedKnowledgeDomains.length > 0 ? true : false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 4),
                      height: 48,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          NeuToggleButton(
                              toggleContainerButtonsList:
                              domainToggleTextButtonsList,
                              toggleButtonsIsSelectedList:
                              domainToggleTextButtonsSelectedList,
                              toggleContainerCustomerWidth: 36 * 2,
                              toggleButtonOnPressedFunction: (value) {
                                suggestedDomainsToggleOnPressed(
                                    suggestedKnowledgeDomains[value]);
                                print("toggle button $value on pressed");
                              })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Neumorphic(
                      margin:
                          EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      style: NeumorphicStyle(
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        shadowLightColor: NeumorphicTheme.isUsingDark(context)
                            ? AppColors.gray600
                            : AppColors.backgroundSecondary(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(24)),
                        color: AppColors.backgroundInversePrimary(context),
                        border: NeumorphicBorder(
                          isEnabled: true,
                          color: AppColors.backgroundSecondary(context),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: TextField(
                              controller: messageTextFieldController,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              readOnly: messageTextFieldReadOnly,
                              style: TextStyle(
                                  color:
                                      AppColors.contentInversePrimary(context),
                                  fontSize: 16,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  height: 1.55),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16),
                                hintText: hintText,
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.contentStateDisabled(context),
                                    fontSize: 16,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w500,
                                    height: 1.55),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Visibility(
                    visible: isSendButtonEnabled,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.only(right: 8),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            lightSource: NeumorphicTheme.isUsingDark(context)
                                ? LightSource.bottomRight
                                : LightSource.topLeft,
                            shadowLightColor:
                                NeumorphicTheme.isUsingDark(context)
                                    ? AppColors.gray600
                                    : AppColors.backgroundSecondary(context),
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: AppColors.backgroundPrimary(context),
                              width: 2,
                            ),
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(24)),
                          ),
                          padding: const EdgeInsets.all(2),
                          child: NeumorphicButton(
                              provideHapticFeedback: true,
                              onPressed: () {
                                sendMessageButtonOnPressed();
                                print("send button tapped");
                              },
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(24)),
                                color:
                                    AppColors.backgroundInversePrimary(context),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text("Ask", style: AppTextStyle.appTextStyle(context, AppColors.contentInversePrimary(
                                    context), 16, FontWeight.w600),),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              visible: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 8),
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      depth: -5,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.backgroundSecondary(context),
                        width: 2,
                      ),
                      color: AppColors.backgroundSecondary(context),
                    ),
                    child: Container(
                      height: 48,
                      width: isMessagingInputClosed ? 48 * 2 : 48 * 7,
                      child: isMessagingInputClosed
                          ? NeuToggleButton(
                              toggleContainerButtonsList: [
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.camera)
                                      .build(context),
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.chevronRight)
                                      .build(context),
                                ],
                              toggleButtonsIsSelectedList: [
                                  false,
                                  false
                                ],
                              toggleContainerCustomerWidth: 36 * 2,
                              toggleButtonOnPressedFunction: (value) {
                                if (value == 1) {
                                  messagingInputToggleOnPressed();
                                }
                                print("toggle button $value on pressed");
                              })
                          : NeuToggleButton(
                              toggleContainerButtonsList: [
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.dollarSign)
                                      .build(context),
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.mapPin)
                                      .build(context),
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.file)
                                      .build(context),
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.user)
                                      .build(context),
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.camera)
                                      .build(context),
                                  NeuToggleIconButtonContainer(FeatherIcons.mic)
                                      .build(context),
                                  NeuToggleIconButtonContainer(
                                          FeatherIcons.chevronLeft)
                                      .build(context),
                                ],
                              toggleButtonsIsSelectedList: [
                                  false,
                                  false,
                                  false,
                                  false,
                                  false,
                                  false,
                                  false
                                ],
                              toggleContainerCustomerWidth: 48 * 7,
                              toggleButtonOnPressedFunction: (value) {
                                if (value == 6) {
                                  messagingInputToggleOnPressed();
                                }
                                print("toggle button $value on pressed");
                              }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
