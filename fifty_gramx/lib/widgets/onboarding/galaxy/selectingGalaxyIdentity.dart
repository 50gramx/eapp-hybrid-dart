

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
import 'package:fifty_gramx/widgets/components/NeuButton/dropDownButton.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/neuToggleButton.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/neuToggleIconButtonContainer.dart';
import 'package:fifty_gramx/widgets/components/NeuToggleButton/neuToggleTextButtonContainer.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormRowToggleSelectionButton.dart';
import 'package:fifty_gramx/widgets/components/TextField/CardNumberTextField.dart';
import 'package:fifty_gramx/widgets/components/listItem/progress/progressContentListTile.dart';
import 'package:fifty_gramx/widgets/components/listItem/progress/progressHeadingListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SelectingGalaxyWidget extends StatefulWidget {
  const SelectingGalaxyWidget({Key? key}) : super(key: key);

  @override
  State<SelectingGalaxyWidget> createState() => _SelectingGalaxyWidgetState();
}

class _SelectingGalaxyWidgetState extends State<SelectingGalaxyWidget> {

  TextEditingController cardNumberTextFieldController = TextEditingController();
  TextEditingController cardExpiryTextFieldController = TextEditingController();
  TextEditingController cardCvvTextFieldController = TextEditingController();
  String cardNumberText = "";
  bool isCardNumberValidated = false;
  bool isCardExpiryValidated = false;
  bool isCardCvvValidated = false;
  late FocusNode cardExpiryTextFieldFocusNode;
  late FocusNode cardCvvTextFieldFocusNode;

  // Toggle Buttons and properties
  int identityPodFormRowToggleSelectionButtonIndex = 0;
  int identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex = 0;
  int identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex = 0;
  List<bool> identitySharingWithList = [true, true, true, true];


  int conversationsPodFormRowToggleSelectionButtonIndex = 0;
  int conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex = 0;
  int conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex = 0;

  List<List<String>> identityPodFormRowToggleSelectionButtonFirstFilter = [
    ["nms", ""],
    ["medium", "₹1128/mo"],
    ["lxx", ""],
  ];
  List<List<List<String>>> identityPodFormRowToggleSelectionButtonSecondFilter =
  [
    [
      ["0.5 GB", "₹141/mo"],
      ["1 GB", "₹282/mo"],
      ["2 GB", "₹564/mo"],
    ],
    [],
    [
      ["8 GB", "₹2257/mo"],
      ["16 GB", "₹4515/mo"],
      ["32 GB", "₹9031/mo"],
    ]
  ];
  List<List<String>> identityPodFormRowToggleSelectionButtonThirdFilter = [
    ["X2 nano", "Individual Use", "0.040320", "0.0000000"],
    ["X2 micro", "Share at ₹0/mo", "0.080640", "0.0000000"],
    ["X2 small", "Share at ₹0/mo", "0.161280", "0.0000000"],
    ["X2 medium", "Share at ₹90/mo", "0.322560", "0.0258048"],
    ["X2 large", "Shared at ₹180/mo", "0.645120", "0.0516096"],
    ["X2 xlarge", "Shared at ₹541/mo", "1.290240", "0.1548288"],
    ["X2 xxlarge", "Shared at ₹1083/mo", "2.580480", "0.3096576"],
  ];

  int knowledgePodFormRowToggleSelectionButtonIndex = 0;
  int knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex = 0;
  int knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex = 0;

  String selectingGalaxyPrimaryButtonText = "Continue";
  int selectingGalaxyCreateHorizontalNavIndex = 0;

  bool isSelectingGalaxy = true;

  @override
  void initState() {


    cardNumberTextFieldController.addListener(() {
      validateCardNumber();
    });

    cardExpiryTextFieldController.addListener(() {
      validateCardExpiry();
    });

    cardExpiryTextFieldFocusNode = FocusNode();

    cardCvvTextFieldController.addListener(() {
      validateCardCvv();
    });

    cardCvvTextFieldFocusNode = FocusNode();



    setSelectedGalaxyIdentityPodName();
    setSelectedGalaxyConversationsPodName();
    setSelectedGalaxyKnowledgePodName();

    setState(() {
      if (listOfInvitedGalaxy.length == 0) {
        listOfInvitedGalaxy.insert(0, "No Invitations");
      }
      listOfInvitedGalaxy.insert(0, "Launch Galaxy");
    });

    super.initState();
  }


  @override
  void dispose() {
    cardNumberTextFieldController.dispose();
    cardExpiryTextFieldController.dispose();
    cardExpiryTextFieldFocusNode.dispose();
    cardCvvTextFieldController.dispose();
    cardCvvTextFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgressContentListTile(
            primaryButtonOnPressed: () =>
            {selectedGalaxyPrimaryButtonOnPressed()},
            secondaryButtonOnPressed: () =>
            {selectedGalaxySecondaryButtonOnPressed()},
            isContentActive: isSelectingGalaxy,
            contentWidget: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: RichText(
                      text: TextSpan(
                        text:
                        "Please accept a Galaxy Invitation or "
                            "launch a new Galaxy",
                        style: TextStyle(
                            color:
                            AppColors.contentPrimary(context),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            height: 1.14285714),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible:
                  selectingGalaxyCreateHorizontalNavIndex ==
                      0,
                  child: Column(children: [
                    DropDownButton(
                      onChange: (galaxy) => {
                        galaxySelectionDropdownOnChange(galaxy)
                      },
                      dropdownItems: listOfInvitedGalaxy,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                              "Please select your invitation to create Space."
                                  "You may create a new Galaxy "
                                  "and invite your trusted contacts with their mobile number to"
                                  " create Space in your Galaxy.",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 12,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  height: 1.14285714),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ]),
                ),
                Visibility(
                  visible:
                  selectingGalaxyCreateHorizontalNavIndex ==
                      1,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: RichText(
                            text: TextSpan(
                              text:
                              "Identity Pod runs on low-cost general purpose"
                                  " X2 machines with 5Gbps of bandwidth speed,"
                                  " up to 8x CPU Cores and memory size of your choice.",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 14,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  height: 1.14285714),
                            ),
                          ),
                        ),
                      ),
                      FormRowToggleSelectionButton(
                          "",
                          "Identity Pod",
                          "Identifies and authenticates all the services accessed by"
                              " accounts and their assistants via their Identity Spaces in your Galaxy.",
                          [
                            "Discover & Create Account Identity Spaces",
                          ],
                          (getGalaxyIdentityFooterText() == ""
                              ? ""
                              : "0/${getGalaxyIdentityFooterText()}"),
                          [
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    0][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    0][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    1][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    1][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false,
                                    strikeThroughSecondaryTitle:
                                    true)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    2][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    2][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                setState(() {
                                  if (index == 0) {
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                        index;
                                    identityPodFormRowToggleSelectionButtonIndex =
                                    1;
                                    identitySharingWithList =
                                    [
                                      true,
                                      true,
                                      true,
                                      false
                                    ];
                                  } else if (index == 2) {
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                        index;
                                    identityPodFormRowToggleSelectionButtonIndex =
                                    1;
                                    identitySharingWithList =
                                    [
                                      false,
                                      false,
                                      false,
                                      true
                                    ];
                                  } else if (index == 1) {
                                    identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                    3;
                                    identityPodFormRowToggleSelectionButtonIndex =
                                    2;
                                    identitySharingWithList =
                                    [
                                      false,
                                      false,
                                      false,
                                      true
                                    ];
                                  }
                                });
                                checkIsSelectingGalaxyDisabled();
                              },
                            ),
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [0][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [0][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [1][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [1][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [2][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [2][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleIconButtonContainer(
                                    Icons.restart_alt)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false,
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                if (index == 3) {
                                  setState(() {
                                    identityPodFormRowToggleSelectionButtonIndex =
                                    0;
                                    identitySharingWithList =
                                    [
                                      true,
                                      true,
                                      true,
                                      true
                                    ];
                                  });
                                } else {
                                  setState(() {
                                    if (identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        0) {
                                      identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                          index;
                                      if (index == 0) {
                                        identitySharingWithList =
                                        [
                                          true,
                                          false,
                                          false,
                                          false
                                        ];
                                      } else if (index == 1) {
                                        identitySharingWithList =
                                        [
                                          false,
                                          true,
                                          false,
                                          false
                                        ];
                                      } else if (index == 2) {
                                        identitySharingWithList =
                                        [
                                          false,
                                          false,
                                          true,
                                          false
                                        ];
                                      }
                                    } else if (identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        2) {
                                      identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                          4 + index;
                                      identitySharingWithList =
                                      [
                                        false,
                                        false,
                                        false,
                                        true
                                      ];
                                    }
                                    identityPodFormRowToggleSelectionButtonIndex =
                                    2;
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    0;
                                  });
                                }
                                checkIsSelectingGalaxyDisabled();
                              },
                            ),
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonThirdFilter[
                                    identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                    [0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonThirdFilter[
                                    identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                    [1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    (identityPodFormRowToggleSelectionButtonIndex ==
                                        2
                                        ? true
                                        : false))
                                    .build(context),
                                NeuToggleIconButtonContainer(
                                    Icons.close_rounded)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                if (index == 1) {
                                  setState(() {
                                    identityPodFormRowToggleSelectionButtonIndex =
                                    0;
                                    identitySharingWithList =
                                    [
                                      true,
                                      true,
                                      true,
                                      true
                                    ];
                                  });
                                  checkIsSelectingGalaxyDisabled();
                                }
                              },
                            ),
                          ],
                          identityPodFormRowToggleSelectionButtonIndex,
                          (identityPodFormRowToggleSelectionButtonIndex ==
                              2
                              ? true
                              : false))
                          .build(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: RichText(
                            text: TextSpan(
                              text: (identityPodFormRowToggleSelectionButtonIndex ==
                                  2)
                                  ? "Selected memory size supports Identity Pod to reserve ${getGalaxyIdentityFooterText()} Identity Space. "
                                  : "Please select the memory (RAM) size of your machine. ",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 12,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  height: 1.14285714),
                              children: [
                                (identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                    3)
                                    ? (identityPodFormRowToggleSelectionButtonIndex ==
                                    2
                                    ? TextSpan(
                                  text:
                                  "X2 medium is eligible for free tier credits of 0.32256 EthosCoin"
                                      " every month up till 50000 account and assistant"
                                      " connections.",
                                  style: TextStyle(
                                      color: AppColors
                                          .blue(
                                          context),
                                      fontSize: 12,
                                      fontFamily:
                                      "Montserrat",
                                      fontWeight:
                                      FontWeight
                                          .w500,
                                      height:
                                      1.14285714),
                                )
                                    : TextSpan())
                                    : TextSpan(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible:
                  selectingGalaxyCreateHorizontalNavIndex ==
                      2,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: RichText(
                            text: TextSpan(
                              text:
                              "Conversations Pod runs on low-cost general purpose"
                                  " X2 machines with 5Gbps of bandwidth speed,"
                                  " up to 8x CPU Cores and memory size of your choice.",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 14,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  height: 1.14285714),
                            ),
                          ),
                        ),
                      ),
                      FormRowToggleSelectionButton(
                          "",
                          "Conversations Pod",
                          "Sends and receives all the messages by account and their"
                              " assistants via their Conversations Spaces "
                              "in the your Galaxy.",
                          [
                            "Discover & Create Account Conversations Spaces"
                          ],
                          "0/${getGalaxyConversationsFooterText()}",
                          [
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    0][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    0][1],
                                    isButtonDisabled:
                                    !(identitySharingWithList[0] ||
                                        identitySharingWithList[
                                        1] ||
                                        identitySharingWithList[
                                        2]),
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    1][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    1][1],
                                    isButtonDisabled:
                                    (!identitySharingWithList[
                                    3]),
                                    isButtonSelected:
                                    false,
                                    strikeThroughSecondaryTitle:
                                    true)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    2][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonFirstFilter[
                                    2][1],
                                    isButtonDisabled:
                                    (!identitySharingWithList[
                                    3]),
                                    isButtonSelected:
                                    false)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                setState(() {
                                  // && identitySharingWithList[3]
                                  if (index == 0 &&
                                      !identitySharingWithList[
                                      3]) {
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                        index;
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    1;
                                  } else if (index == 2 &&
                                      identitySharingWithList[
                                      3]) {
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                        index;
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    1;
                                  } else if (index == 1 &&
                                      identitySharingWithList[
                                      3]) {
                                    conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                    3;
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    2;
                                  }
                                });
                                checkIsSelectingGalaxyDisabled();
                              },
                            ),
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [0][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [0][1],
                                    isButtonDisabled:
                                    (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        0
                                        ? (!identitySharingWithList[
                                    0])
                                        : false),
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [1][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [1][1],
                                    isButtonDisabled:
                                    (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        0
                                        ? (!identitySharingWithList[
                                    1])
                                        : false),
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [2][0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonSecondFilter[
                                    conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [2][1],
                                    isButtonDisabled:
                                    (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        0
                                        ? (!identitySharingWithList[
                                    2])
                                        : false),
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleIconButtonContainer(
                                    Icons.restart_alt)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false,
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                if (index == 3) {
                                  setState(() {
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    0;
                                  });
                                } else {
                                  setState(() {
                                    if (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        0) {
                                      if (index == 0 &&
                                          identitySharingWithList[
                                          0]) {
                                        conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                            index;
                                        conversationsPodFormRowToggleSelectionButtonIndex =
                                        2;
                                      } else if (index == 1 &&
                                          identitySharingWithList[
                                          1]) {
                                        conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                            index;
                                        conversationsPodFormRowToggleSelectionButtonIndex =
                                        2;
                                      } else if (index == 2 &&
                                          identitySharingWithList[
                                          2]) {
                                        conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                            index;
                                        conversationsPodFormRowToggleSelectionButtonIndex =
                                        2;
                                      }
                                    } else if (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        2) {
                                      conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                          4 + index;
                                      conversationsPodFormRowToggleSelectionButtonIndex =
                                      2;
                                    }
                                  });
                                }
                                checkIsSelectingGalaxyDisabled();
                              },
                            ),
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    identityPodFormRowToggleSelectionButtonThirdFilter[
                                    conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                    [0],
                                    buttonSecondaryTitle:
                                    identityPodFormRowToggleSelectionButtonThirdFilter[
                                    conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                    [1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    (conversationsPodFormRowToggleSelectionButtonIndex ==
                                        2
                                        ? true
                                        : false))
                                    .build(context),
                                NeuToggleIconButtonContainer(
                                    Icons.close_rounded)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                if (index == 1) {
                                  setState(() {
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    0;
                                  });
                                  checkIsSelectingGalaxyDisabled();
                                }
                              },
                            ),
                          ],
                          conversationsPodFormRowToggleSelectionButtonIndex,
                          (conversationsPodFormRowToggleSelectionButtonIndex ==
                              2
                              ? true
                              : false))
                          .build(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: RichText(
                            text: TextSpan(
                              text: (conversationsPodFormRowToggleSelectionButtonIndex ==
                                  2)
                                  ? "Selected memory size supports Conversations Pod to reserve ${getGalaxyConversationsFooterText()} Conversations Space. "
                                  : "Please select the memory (RAM) size of your machine. ",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 12,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  height: 1.14285714),
                              children: [
                                (identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex <
                                    3)
                                    ? (conversationsPodFormRowToggleSelectionButtonIndex !=
                                    2
                                    ? TextSpan(
                                  text:
                                  "Selection of machine type medium, large, xlarge and xxlarge may be limited by Identity Pod Space capacity.",
                                  style: TextStyle(
                                      color: AppColors
                                          .warning(
                                          context),
                                      fontSize: 12,
                                      fontFamily:
                                      "Montserrat",
                                      fontWeight:
                                      FontWeight
                                          .w500,
                                      height:
                                      1.14285714),
                                )
                                    : ((conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                    3)
                                    ? TextSpan(
                                  text:
                                  "X2 medium is eligible for free tier credits of 0.32256 EthosCoin"
                                      " every month up till 50000 account and assistant"
                                      " conversation messages.",
                                  style: TextStyle(
                                      color: AppColors
                                          .blue(
                                          context),
                                      fontSize: 12,
                                      fontFamily:
                                      "Montserrat",
                                      fontWeight:
                                      FontWeight
                                          .w500,
                                      height:
                                      1.14285714),
                                )
                                    : TextSpan()))
                                    : (conversationsPodFormRowToggleSelectionButtonIndex !=
                                    2
                                    ? TextSpan(
                                  text:
                                  "Selection of machine type nano, micro and small may be limited by Identity Pod Space capacity.",
                                  style: TextStyle(
                                      color: AppColors
                                          .warning(
                                          context),
                                      fontSize: 12,
                                      fontFamily:
                                      "Montserrat",
                                      fontWeight:
                                      FontWeight
                                          .w500,
                                      height:
                                      1.14285714),
                                )
                                    : ((conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                    3)
                                    ? TextSpan(
                                  text:
                                  "X2 medium is eligible for free tier credits of 0.32256 EthosCoin"
                                      " every month up till 50000 account and assistant"
                                      " conversation messages.",
                                  style: TextStyle(
                                      color: AppColors
                                          .blue(
                                          context),
                                      fontSize: 12,
                                      fontFamily:
                                      "Montserrat",
                                      fontWeight:
                                      FontWeight
                                          .w500,
                                      height:
                                      1.14285714),
                                )
                                    : TextSpan()))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible:
                  selectingGalaxyCreateHorizontalNavIndex ==
                      3,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: RichText(
                            text: TextSpan(
                              text:
                              "Knowledge Pod runs on next-generation memory optimized"
                                  " M2 machines with 10Gbps of bandwidth speed,"
                                  " up to 32x CPU Cores and memory size of your choice.",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 14,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  height: 1.14285714),
                            ),
                          ),
                        ),
                      ),
                      FormRowToggleSelectionButton(
                          "",
                          "Knowledge Pod",
                          "Stores and retrieves all the information shared and hosted by"
                              " accounts and their assistants in their "
                              "Knowledge Space Domains via their "
                              "Knowledge Spaces in the your Galaxy.",
                          [
                            "Create Closed & Isolated Knowledge Space Domains",
                            "Create Closed & Non-Isolated Knowledge Space Domains",
                          ],
                          "0/${getGalaxyKnowledgeFooterText()}",
                          [
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                    0][0],
                                    buttonSecondaryTitle:
                                    knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                    0][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                    1][0],
                                    buttonSecondaryTitle:
                                    knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                    1][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false,
                                    strikeThroughSecondaryTitle:
                                    true)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                    2][0],
                                    buttonSecondaryTitle:
                                    knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                    2][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                setState(() {
                                  // && identitySharingWithList[3]
                                  if (index == 0) {
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                        index;
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                    1;
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    1;
                                  } else if (index == 2) {
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                        index;
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                    1;
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    1;
                                  } else if (index == 1) {
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                        index;
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                    3;
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    2;
                                  }
                                });
                                checkIsSelectingGalaxyDisabled();
                              },
                            ),
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [0][0],
                                    buttonSecondaryTitle:
                                    knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [0][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [1][0],
                                    buttonSecondaryTitle:
                                    knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [1][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleTextButtonContainer(
                                    buttonTitle:
                                    knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [2][0],
                                    buttonSecondaryTitle:
                                    knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                    knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                    [2][1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    false)
                                    .build(context),
                                NeuToggleIconButtonContainer(
                                    Icons.restart_alt)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false,
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                print("index: $index");
                                if (index == 3) {
                                  setState(() {
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    0;
                                  });
                                } else {
                                  setState(() {
                                    if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        0) {
                                      if (index == 0) {
                                        knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                            index;
                                        knowledgePodFormRowToggleSelectionButtonIndex =
                                        2;
                                      } else if (index == 1) {
                                        knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                            index;
                                        knowledgePodFormRowToggleSelectionButtonIndex =
                                        2;
                                      } else if (index == 2) {
                                        knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                            index;
                                        knowledgePodFormRowToggleSelectionButtonIndex =
                                        2;
                                      }
                                    } else if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                        2) {
                                      knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                          index;
                                      knowledgePodFormRowToggleSelectionButtonIndex =
                                      2;
                                    }
                                  });
                                }
                                checkIsSelectingGalaxyDisabled();
                              },
                            ),
                            NeuToggleButton(
                              toggleContainerButtonsList: [
                                NeuToggleTextButtonContainer(
                                    buttonTitle: knowledgePodFormRowToggleSelectionButtonThirdFilter[
                                    (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex == 2
                                        ? 4 +
                                        knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex
                                        : knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex)]
                                    [0],
                                    buttonSecondaryTitle:
                                    knowledgePodFormRowToggleSelectionButtonThirdFilter[
                                    (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex == 2
                                        ? 4 +
                                        knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex
                                        : knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex)]
                                    [1],
                                    isButtonDisabled:
                                    false,
                                    isButtonSelected:
                                    (knowledgePodFormRowToggleSelectionButtonIndex ==
                                        2
                                        ? true
                                        : false))
                                    .build(context),
                                NeuToggleIconButtonContainer(
                                    Icons.close_rounded)
                                    .build(context)
                              ],
                              toggleButtonsIsSelectedList: [
                                false,
                                false
                              ],
                              toggleButtonOnPressedFunction:
                                  (index) {
                                if (index == 1) {
                                  setState(() {
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    0;
                                  });
                                  checkIsSelectingGalaxyDisabled();
                                }
                              },
                            ),
                          ],
                          knowledgePodFormRowToggleSelectionButtonIndex,
                          (knowledgePodFormRowToggleSelectionButtonIndex ==
                              2
                              ? true
                              : false))
                          .build(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: RichText(
                            text: TextSpan(
                              text: (knowledgePodFormRowToggleSelectionButtonIndex ==
                                  2)
                                  ? "Selected memory size supports your Knowledge Pod to reserve ${getGalaxyKnowledgeFooterText()} Knowledge Space Domains. "
                                  : "Please select the memory (RAM) size of your machine. ",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 12,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  height: 1.14285714),
                              children: [
                                (knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                    3)
                                    ? (knowledgePodFormRowToggleSelectionButtonIndex ==
                                    2
                                    ? TextSpan(
                                  text:
                                  "M2 medium is eligible for free tier credits of 1.2024 EthosCoin"
                                      " every month up till 240 Pages hosted on closed"
                                      " Space Knowledge Domains.",
                                  style: TextStyle(
                                      color: AppColors
                                          .blue(
                                          context),
                                      fontSize: 12,
                                      fontFamily:
                                      "Montserrat",
                                      fontWeight:
                                      FontWeight
                                          .w500,
                                      height:
                                      1.14285714),
                                )
                                    : TextSpan())
                                    : TextSpan(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // TODO: Handle the conversations disable states and add Knowledge Pod Configs
              ],
            ),
            isSecondaryButtonActive: true,
            isPrimaryButtonDisabled:
            isSelectingGalaxyDisabled || !isCreatingOwnGalaxy,
            contentActionButtonTitle:
            selectingGalaxyPrimaryButtonText),
        Visibility(
          visible: isCreatingOwnGalaxy,
          child: ProgressHeadingListTile(
              key: selectingGalaxyIdentityPodHeadingKey,
              isHeadingActive: isSelectingGalaxyIdentityPod,
              isProgressed: isGalaxyIdentityPodSelected,
              headingTitle: galaxyIdentityPodSelectionHeading),
        ),
        Visibility(
          visible: isCreatingOwnGalaxy,
          child: ProgressContentListTile(
              primaryButtonOnPressed: () => {
                selectedGalaxyIdentityPodPrimaryButtonOnPressed()
              },
              secondaryButtonOnPressed: () => {
                selectedGalaxyIdentityPodSecondaryButtonOnPressed()
              },
              isContentActive: isSelectingGalaxyIdentityPod,
              contentWidget: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                          text:
                          "Identity Pod runs on low-cost general purpose"
                              " X2 machines with 5Gbps of bandwidth speed,"
                              " up to 8x CPU Cores and memory size of your choice.",
                          style: TextStyle(
                              color: AppColors.contentTertiary(
                                  context),
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              height: 1.14285714),
                        ),
                      ),
                    ),
                  ),
                  FormRowToggleSelectionButton(
                      "",
                      "Identity Pod",
                      "Identifies and authenticates all the services accessed by"
                          " accounts and their assistants via their Identity Spaces in the your Galaxy.",
                      [
                        "Discover & Create Account Identity Spaces",
                      ],
                      (getGalaxyIdentityFooterText() == ""
                          ? ""
                          : "0/${getGalaxyIdentityFooterText()}"),
                      [
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                0][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                0][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                1][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                1][1],
                                isButtonDisabled: false,
                                isButtonSelected: false,
                                strikeThroughSecondaryTitle:
                                true)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                2][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                2][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            setState(() {
                              if (index == 0) {
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                    index;
                                identityPodFormRowToggleSelectionButtonIndex =
                                1;
                                identitySharingWithList = [
                                  true,
                                  true,
                                  true,
                                  false
                                ];
                              } else if (index == 2) {
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                    index;
                                identityPodFormRowToggleSelectionButtonIndex =
                                1;
                                identitySharingWithList = [
                                  false,
                                  false,
                                  false,
                                  true
                                ];
                              } else if (index == 1) {
                                identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                3;
                                identityPodFormRowToggleSelectionButtonIndex =
                                2;
                                identitySharingWithList = [
                                  false,
                                  false,
                                  false,
                                  true
                                ];
                              }
                            });
                            checkIsSelectingGalaxyDisabled();
                          },
                        ),
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [0][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [0][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [1][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [1][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [2][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [2][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleIconButtonContainer(
                                Icons.restart_alt)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false,
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            if (index == 3) {
                              setState(() {
                                identityPodFormRowToggleSelectionButtonIndex =
                                0;
                                identitySharingWithList = [
                                  true,
                                  true,
                                  true,
                                  true
                                ];
                              });
                            } else {
                              setState(() {
                                if (identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    0) {
                                  identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                      index;
                                  if (index == 0) {
                                    identitySharingWithList =
                                    [
                                      true,
                                      false,
                                      false,
                                      false
                                    ];
                                  } else if (index == 1) {
                                    identitySharingWithList =
                                    [
                                      false,
                                      true,
                                      false,
                                      false
                                    ];
                                  } else if (index == 2) {
                                    identitySharingWithList =
                                    [
                                      false,
                                      false,
                                      true,
                                      false
                                    ];
                                  }
                                } else if (identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    2) {
                                  identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                      4 + index;
                                  identitySharingWithList = [
                                    false,
                                    false,
                                    false,
                                    true
                                  ];
                                }
                                identityPodFormRowToggleSelectionButtonIndex =
                                2;
                                conversationsPodFormRowToggleSelectionButtonIndex =
                                0;
                              });
                            }
                            checkIsSelectingGalaxyDisabled();
                          },
                        ),
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonThirdFilter[
                                identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                [0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonThirdFilter[
                                identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                [1],
                                isButtonDisabled: false,
                                isButtonSelected:
                                (identityPodFormRowToggleSelectionButtonIndex ==
                                    2
                                    ? true
                                    : false))
                                .build(context),
                            NeuToggleIconButtonContainer(
                                Icons.close_rounded)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            if (index == 1) {
                              setState(() {
                                identityPodFormRowToggleSelectionButtonIndex =
                                0;
                                identitySharingWithList = [
                                  true,
                                  true,
                                  true,
                                  true
                                ];
                              });
                              checkIsSelectingGalaxyDisabled();
                            }
                          },
                        ),
                      ],
                      identityPodFormRowToggleSelectionButtonIndex,
                      (identityPodFormRowToggleSelectionButtonIndex ==
                          2
                          ? true
                          : false))
                      .build(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                          text: (identityPodFormRowToggleSelectionButtonIndex ==
                              2)
                              ? "Selected memory size supports Identity Pod to reserve ${getGalaxyIdentityFooterText()} Identity Space. "
                              : "Please select the memory (RAM) size of your machine. ",
                          style: TextStyle(
                              color: AppColors.contentTertiary(
                                  context),
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.14285714),
                          children: [
                            (identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                3)
                                ? (identityPodFormRowToggleSelectionButtonIndex ==
                                2
                                ? TextSpan(
                              text:
                              "X2 medium is eligible for free tier credits of 0.32256 EthosCoin"
                                  " every month up till 50000 account and assistant"
                                  " connections.",
                              style: TextStyle(
                                  color: AppColors.blue(
                                      context),
                                  fontSize: 12,
                                  fontFamily:
                                  "Montserrat",
                                  fontWeight:
                                  FontWeight.w500,
                                  height: 1.14285714),
                            )
                                : TextSpan())
                                : TextSpan(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              isPrimaryButtonDisabled:
              identityPodFormRowToggleSelectionButtonIndex ==
                  2
                  ? false
                  : true,
              isSecondaryButtonActive: true,
              contentActionButtonTitle: "Continue"),
        ),
        Visibility(
          key: selectingGalaxyConversationsPodHeadingKey,
          visible: isCreatingOwnGalaxy,
          child: ProgressHeadingListTile(
              isHeadingActive: isSelectingGalaxyConversationsPod,
              isProgressed: isGalaxyConversationsPodSelected,
              headingTitle:
              galaxyConversationsPodSelectionHeading),
        ),
        Visibility(
          visible: isCreatingOwnGalaxy,
          child: ProgressContentListTile(
              primaryButtonOnPressed: () => {
                selectedGalaxyConversationsPodPrimaryButtonOnPressed()
              },
              secondaryButtonOnPressed: () => {
                selectedGalaxyConversationsPodSecondaryButtonOnPressed()
              },
              isContentActive: isSelectingGalaxyConversationsPod,
              contentWidget: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                          text:
                          "Conversations Pod runs on low-cost general purpose"
                              " X2 machines with 5Gbps of bandwidth speed,"
                              " up to 8x CPU Cores and memory size of your choice.",
                          style: TextStyle(
                              color: AppColors.contentTertiary(
                                  context),
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              height: 1.14285714),
                        ),
                      ),
                    ),
                  ),
                  FormRowToggleSelectionButton(
                      "",
                      "Conversations Pod",
                      "Sends and receives all the messages by account and their"
                          " assistants via their Conversations Spaces "
                          "in your Galaxy.",
                      [
                        "Discover & Create Account Conversations Spaces"
                      ],
                      "0/${getGalaxyConversationsFooterText()}",
                      [
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                0][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                0][1],
                                isButtonDisabled:
                                !(identitySharingWithList[0] ||
                                    identitySharingWithList[
                                    1] ||
                                    identitySharingWithList[
                                    2]),
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                1][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                1][1],
                                isButtonDisabled:
                                (!identitySharingWithList[
                                3]),
                                isButtonSelected: false,
                                strikeThroughSecondaryTitle:
                                true)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                2][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonFirstFilter[
                                2][1],
                                isButtonDisabled:
                                (!identitySharingWithList[
                                3]),
                                isButtonSelected: false)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            setState(() {
                              // && identitySharingWithList[3]
                              if (index == 0 &&
                                  !identitySharingWithList[
                                  3]) {
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                    index;
                                conversationsPodFormRowToggleSelectionButtonIndex =
                                1;
                              } else if (index == 2 &&
                                  identitySharingWithList[
                                  3]) {
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                    index;
                                conversationsPodFormRowToggleSelectionButtonIndex =
                                1;
                              } else if (index == 1 &&
                                  identitySharingWithList[
                                  3]) {
                                conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                3;
                                conversationsPodFormRowToggleSelectionButtonIndex =
                                2;
                              }
                            });
                            checkIsSelectingGalaxyDisabled();
                          },
                        ),
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [0][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [0][1],
                                isButtonDisabled:
                                (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    0
                                    ? (!identitySharingWithList[
                                0])
                                    : false),
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [1][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [1][1],
                                isButtonDisabled:
                                (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    0
                                    ? (!identitySharingWithList[
                                1])
                                    : false),
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [2][0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonSecondFilter[
                                conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [2][1],
                                isButtonDisabled:
                                (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    0
                                    ? (!identitySharingWithList[
                                2])
                                    : false),
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleIconButtonContainer(
                                Icons.restart_alt)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false,
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            if (index == 3) {
                              setState(() {
                                conversationsPodFormRowToggleSelectionButtonIndex =
                                0;
                              });
                            } else {
                              setState(() {
                                if (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    0) {
                                  if (index == 0 &&
                                      identitySharingWithList[
                                      0]) {
                                    conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                        index;
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    2;
                                  } else if (index == 1 &&
                                      identitySharingWithList[
                                      1]) {
                                    conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                        index;
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    2;
                                  } else if (index == 2 &&
                                      identitySharingWithList[
                                      2]) {
                                    conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                        index;
                                    conversationsPodFormRowToggleSelectionButtonIndex =
                                    2;
                                  }
                                } else if (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    2) {
                                  conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                      4 + index;
                                  conversationsPodFormRowToggleSelectionButtonIndex =
                                  2;
                                }
                              });
                            }
                            checkIsSelectingGalaxyDisabled();
                          },
                        ),
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                identityPodFormRowToggleSelectionButtonThirdFilter[
                                conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                [0],
                                buttonSecondaryTitle:
                                identityPodFormRowToggleSelectionButtonThirdFilter[
                                conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                                [1],
                                isButtonDisabled: false,
                                isButtonSelected:
                                (conversationsPodFormRowToggleSelectionButtonIndex ==
                                    2
                                    ? true
                                    : false))
                                .build(context),
                            NeuToggleIconButtonContainer(
                                Icons.close_rounded)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            if (index == 1) {
                              setState(() {
                                conversationsPodFormRowToggleSelectionButtonIndex =
                                0;
                              });
                              checkIsSelectingGalaxyDisabled();
                            }
                          },
                        ),
                      ],
                      conversationsPodFormRowToggleSelectionButtonIndex,
                      (conversationsPodFormRowToggleSelectionButtonIndex ==
                          2
                          ? true
                          : false))
                      .build(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                          text: (conversationsPodFormRowToggleSelectionButtonIndex ==
                              2)
                              ? "Selected memory size supports Conversations Pod to reserve ${getGalaxyConversationsFooterText()} Conversations Space. "
                              : "Please select the memory (RAM) size of your machine. ",
                          style: TextStyle(
                              color: AppColors.contentTertiary(
                                  context),
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.14285714),
                          children: [
                            (identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex <
                                3)
                                ? (conversationsPodFormRowToggleSelectionButtonIndex !=
                                2
                                ? TextSpan(
                              text:
                              "Selection of machine type medium, large, xlarge and xxlarge may be limited by Identity Pod Space capacity.",
                              style: TextStyle(
                                  color:
                                  AppColors.warning(
                                      context),
                                  fontSize: 12,
                                  fontFamily:
                                  "Montserrat",
                                  fontWeight:
                                  FontWeight.w500,
                                  height: 1.14285714),
                            )
                                : ((conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                3)
                                ? TextSpan(
                              text:
                              "X2 medium is eligible for free tier credits of 0.32256 EthosCoin"
                                  " every month up till 50000 account and assistant"
                                  " conversation messages.",
                              style: TextStyle(
                                  color: AppColors
                                      .blue(
                                      context),
                                  fontSize: 12,
                                  fontFamily:
                                  "Montserrat",
                                  fontWeight:
                                  FontWeight
                                      .w500,
                                  height:
                                  1.14285714),
                            )
                                : TextSpan()))
                                : (conversationsPodFormRowToggleSelectionButtonIndex !=
                                2
                                ? TextSpan(
                              text:
                              "Selection of machine type nano, micro and small may be limited by Identity Pod Space capacity.",
                              style: TextStyle(
                                  color:
                                  AppColors.warning(
                                      context),
                                  fontSize: 12,
                                  fontFamily:
                                  "Montserrat",
                                  fontWeight:
                                  FontWeight.w500,
                                  height: 1.14285714),
                            )
                                : ((conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                3)
                                ? TextSpan(
                              text:
                              "X2 medium is eligible for free tier credits of 0.32256 EthosCoin"
                                  " every month up till 50000 account and assistant"
                                  " conversation messages.",
                              style: TextStyle(
                                  color: AppColors
                                      .blue(
                                      context),
                                  fontSize: 12,
                                  fontFamily:
                                  "Montserrat",
                                  fontWeight:
                                  FontWeight
                                      .w500,
                                  height:
                                  1.14285714),
                            )
                                : TextSpan()))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              isPrimaryButtonDisabled:
              conversationsPodFormRowToggleSelectionButtonIndex ==
                  2
                  ? false
                  : true,
              isSecondaryButtonActive: true,
              contentActionButtonTitle: "Continue"),
        ),
        Visibility(
          visible: isCreatingOwnGalaxy,
          child: ProgressHeadingListTile(
              key: selectingGalaxyKnowledgePodHeadingKey,
              isHeadingActive: isSelectingGalaxyKnowledgePod,
              isProgressed: isGalaxyKnowledgePodSelected,
              headingTitle: galaxyKnowledgePodSelectionHeading),
        ),
        Visibility(
          visible: isCreatingOwnGalaxy,
          child: ProgressContentListTile(
              primaryButtonOnPressed: () => {
                selectedGalaxyKnowledgePodPrimaryButtonOnPressed()
              },
              secondaryButtonOnPressed: () => {
                selectedGalaxyKnowledgePodSecondaryButtonOnPressed()
              },
              isContentActive: isSelectingGalaxyKnowledgePod,
              contentWidget: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                          text:
                          "Knowledge Pod runs on next-generation memory optimized"
                              " M2 machines which includes NVMe-based SSD block-level"
                              " storage up to 1 x 1900 GB with 10Gbps of bandwidth speed,"
                              " up to 32x CPU Cores and memory size of your choice.",
                          style: TextStyle(
                              color: AppColors.contentTertiary(
                                  context),
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              height: 1.14285714),
                        ),
                      ),
                    ),
                  ),
                  FormRowToggleSelectionButton(
                      "",
                      "Knowledge Pod",
                      "Stores and retrieves all the information shared and hosted by"
                          " accounts and their assistants in their "
                          "Knowledge Space Domains via their "
                          "Knowledge Spaces in your Galaxy.",
                      [
                        "Create Closed & Isolated Knowledge Space Domains",
                        "Create Closed & Non-Isolated Knowledge Space Domains",
                      ],
                      "0/${getGalaxyKnowledgeFooterText()}",
                      [
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                0][0],
                                buttonSecondaryTitle:
                                knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                0][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                1][0],
                                buttonSecondaryTitle:
                                knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                1][1],
                                isButtonDisabled: false,
                                isButtonSelected: false,
                                strikeThroughSecondaryTitle:
                                true)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                2][0],
                                buttonSecondaryTitle:
                                knowledgePodFormRowToggleSelectionButtonFirstFilter[
                                2][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            setState(() {
                              // && identitySharingWithList[3]
                              if (index == 0) {
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                    index;
                                knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                1;
                                knowledgePodFormRowToggleSelectionButtonIndex =
                                1;
                              } else if (index == 2) {
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                    index;
                                knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                1;
                                knowledgePodFormRowToggleSelectionButtonIndex =
                                1;
                              } else if (index == 1) {
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex =
                                    index;
                                knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                3;
                                knowledgePodFormRowToggleSelectionButtonIndex =
                                2;
                              }
                            });
                            checkIsSelectingGalaxyDisabled();
                          },
                        ),
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [0][0],
                                buttonSecondaryTitle:
                                knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [0][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [1][0],
                                buttonSecondaryTitle:
                                knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [1][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleTextButtonContainer(
                                buttonTitle:
                                knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [2][0],
                                buttonSecondaryTitle:
                                knowledgePodFormRowToggleSelectionButtonSecondFilter[
                                knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex]
                                [2][1],
                                isButtonDisabled: false,
                                isButtonSelected: false)
                                .build(context),
                            NeuToggleIconButtonContainer(
                                Icons.restart_alt)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false,
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            print("index: $index");
                            if (index == 3) {
                              setState(() {
                                knowledgePodFormRowToggleSelectionButtonIndex =
                                0;
                              });
                            } else {
                              setState(() {
                                if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    0) {
                                  if (index == 0) {
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                        index;
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    2;
                                  } else if (index == 1) {
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                        index;
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    2;
                                  } else if (index == 2) {
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                        index;
                                    knowledgePodFormRowToggleSelectionButtonIndex =
                                    2;
                                  }
                                } else if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
                                    2) {
                                  knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex =
                                      index;
                                  knowledgePodFormRowToggleSelectionButtonIndex =
                                  2;
                                }
                              });
                            }
                            checkIsSelectingGalaxyDisabled();
                          },
                        ),
                        NeuToggleButton(
                          toggleContainerButtonsList: [
                            NeuToggleTextButtonContainer(
                                buttonTitle: knowledgePodFormRowToggleSelectionButtonThirdFilter[
                                (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex == 2
                                    ? 4 +
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex
                                    : knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex)]
                                [0],
                                buttonSecondaryTitle:
                                knowledgePodFormRowToggleSelectionButtonThirdFilter[
                                (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex == 2
                                    ? 4 +
                                    knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex
                                    : knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex)]
                                [1],
                                isButtonDisabled: false,
                                isButtonSelected:
                                (knowledgePodFormRowToggleSelectionButtonIndex ==
                                    2
                                    ? true
                                    : false))
                                .build(context),
                            NeuToggleIconButtonContainer(
                                Icons.close_rounded)
                                .build(context)
                          ],
                          toggleButtonsIsSelectedList: [
                            false,
                            false
                          ],
                          toggleButtonOnPressedFunction:
                              (index) {
                            if (index == 1) {
                              setState(() {
                                knowledgePodFormRowToggleSelectionButtonIndex =
                                0;
                              });
                              checkIsSelectingGalaxyDisabled();
                            }
                          },
                        ),
                      ],
                      knowledgePodFormRowToggleSelectionButtonIndex,
                      (knowledgePodFormRowToggleSelectionButtonIndex ==
                          2
                          ? true
                          : false))
                      .build(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                          text: (knowledgePodFormRowToggleSelectionButtonIndex ==
                              2)
                              ? "Selected memory size supports your Knowledge Pod to reserve ${getGalaxyKnowledgeFooterText()} Knowledge Space Domains. "
                              : "Please select the memory (RAM) size of your machine. ",
                          style: TextStyle(
                              color: AppColors.contentTertiary(
                                  context),
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.14285714),
                          children: [
                            (knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                3)
                                ? (knowledgePodFormRowToggleSelectionButtonIndex ==
                                2
                                ? TextSpan(
                              text:
                              "M2 medium is eligible for free tier credits of 1.2024 EthosCoin"
                                  " every month up till 240 Pages hosted on closed"
                                  " Space Knowledge Domains.",
                              style: TextStyle(
                                  color: AppColors.blue(
                                      context),
                                  fontSize: 12,
                                  fontFamily:
                                  "Montserrat",
                                  fontWeight:
                                  FontWeight.w500,
                                  height: 1.14285714),
                            )
                                : TextSpan())
                                : TextSpan(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              isPrimaryButtonDisabled:
              knowledgePodFormRowToggleSelectionButtonIndex ==
                  2
                  ? false
                  : true,
              isSecondaryButtonActive: true,
              contentActionButtonTitle: "Continue"),
        ),
        ProgressHeadingListTile(
            isHeadingActive: isConfirmingIdentitySpace,
            isProgressed: isIdentitySpaceConfirmed,
            headingTitle: isIdentitySpaceConfirmedHeadingText),
        ProgressContentListTile(
            primaryButtonOnPressed: () =>
            {confirmingIdentitySpacePrimaryButtonOnPressed()},
            secondaryButtonOnPressed: () => {
              confirmingIdentitySpaceSecondaryButtonOnPressed()
            },
            isContentActive: isConfirmingIdentitySpace,
            contentWidget: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "Identity Space runs"
                            " on low-cost general purpose X2 machines",
                        style: TextStyle(
                            color: AppColors.contentTertiary(
                                context),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            height: 1.14285714),
                      ),
                    ),
                  ),
                ),
                FormRowToggleSelectionButton(
                    "",
                    "Identity Space",
                    "Identifies and authenticates all the services accessed by"
                        " you and your assistant in your Space.",
                    [
                      "Discover and Connect Account Assistants",
                      "Discover and Connect Interested Accounts",
                      "Discover and Connect Organisation Assistants",
                      "Receive General and Critical Notifications",
                    ],
                    "",
                    [
                      NeuToggleButton(
                        // todo: update with invited galaxy details
                        toggleContainerButtonsList: [
                          NeuToggleTextButtonContainer(
                              buttonTitle:
                              identityPodFormRowToggleSelectionButtonThirdFilter[
                              identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                              [0],
                              buttonSecondaryTitle:
                              identityPodFormRowToggleSelectionButtonThirdFilter[
                              identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][1],
                              isButtonDisabled: false,
                              isButtonSelected: true)
                              .build(context),
                        ],
                        toggleButtonsIsSelectedList: [false],
                        toggleButtonOnPressedFunction:
                            (index) {},
                      ),
                    ],
                    0,
                    true)
                    .build(context),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "",
                        style: TextStyle(
                            color: AppColors.contentTertiary(
                                context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                        children: [
                          (identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                              3)
                              ? (identityPodFormRowToggleSelectionButtonIndex ==
                              2
                              ? TextSpan(
                            text:
                            "Selected Identity Space eligible for free tier credits of 0.0258048 EthosCoin"
                                " every month up till 1000 account and assistant"
                                " connections.",
                            style: TextStyle(
                                color: AppColors.blue(
                                    context),
                                fontSize: 12,
                                fontFamily:
                                "Montserrat",
                                fontWeight:
                                FontWeight.w500,
                                height: 1.14285714),
                          )
                              : TextSpan())
                              : TextSpan(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            isSecondaryButtonActive: true,
            secondaryButtonTitle: "Previous",
            contentActionButtonTitle: "Confirm"),
        ProgressHeadingListTile(
            isHeadingActive: isConfirmingConversationsSpace,
            isProgressed: isConversationsSpaceConfirmed,
            headingTitle:
            isConversationsSpaceConfirmedHeadingText),
        ProgressContentListTile(
            primaryButtonOnPressed: () => {
              confirmingConversationsSpacePrimaryButtonOnPressed()
            },
            secondaryButtonOnPressed: () => {
              confirmingConversationsSpaceSecondaryButtonOnPressed()
            },
            isContentActive: isConfirmingConversationsSpace,
            contentWidget: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "Conversations Space runs"
                            " on low-cost general purpose X2 machines.",
                        style: TextStyle(
                            color: AppColors.contentTertiary(
                                context),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            height: 1.14285714),
                      ),
                    ),
                  ),
                ),
                FormRowToggleSelectionButton(
                    "",
                    "Conversations Space",
                    "Sends and Receives conversation messages by"
                        " you and your assistant in your Space.",
                    [
                      "Message Conversations with Connected Account Assistants",
                      "Speed Message Conversations with Connected Accounts",
                      "Message Conversations with Connected Organization Assistants",
                    ],
                    "",
                    [
                      NeuToggleButton(
                        // todo: update with invited galaxy details
                        toggleContainerButtonsList: [
                          NeuToggleTextButtonContainer(
                              buttonTitle:
                              identityPodFormRowToggleSelectionButtonThirdFilter[
                              conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                              [0],
                              buttonSecondaryTitle:
                              identityPodFormRowToggleSelectionButtonThirdFilter[
                              conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][1],
                              isButtonDisabled: false,
                              isButtonSelected: true)
                              .build(context),
                        ],
                        toggleButtonsIsSelectedList: [false],
                        toggleButtonOnPressedFunction:
                            (index) {},
                      ),
                    ],
                    0,
                    true)
                    .build(context),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "",
                        style: TextStyle(
                            color: AppColors.contentTertiary(
                                context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                        children: [
                          (knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                              3)
                              ? (knowledgePodFormRowToggleSelectionButtonIndex ==
                              2
                              ? TextSpan(
                            text:
                            "Selected Identity Space is eligible for free tier credits of 0.0258048 EthosCoin"
                                " every month up till 1000 account and assistant"
                                " conversation messages.",
                            style: TextStyle(
                                color: AppColors.blue(
                                    context),
                                fontSize: 12,
                                fontFamily:
                                "Montserrat",
                                fontWeight:
                                FontWeight.w500,
                                height: 1.14285714),
                          )
                              : TextSpan())
                              : TextSpan(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            isSecondaryButtonActive: true,
            secondaryButtonTitle: "Previous",
            contentActionButtonTitle: "Confirm"),
        ProgressHeadingListTile(
            isHeadingActive: isConfirmingKnowledgeSpaceDomains,
            isProgressed: isKnowledgeSpaceDomainsConfirmed,
            headingTitle:
            isKnowledgeSpaceDomainsConfirmedHeadingText),
        ProgressContentListTile(
            primaryButtonOnPressed: () => {
              confirmingKnowledgeSpaceDomainsPrimaryButtonOnPressed()
            },
            secondaryButtonOnPressed: () => {
              confirmingKnowledgeSpaceDomainsSecondaryButtonOnPressed()
            },
            isContentActive: isConfirmingKnowledgeSpaceDomains,
            contentWidget: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "Knowledge Space Domains runs"
                            " on next-generation memory optimized M2 machines.",
                        style: TextStyle(
                            color: AppColors.contentTertiary(
                                context),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            height: 1.14285714),
                      ),
                    ),
                  ),
                ),
                FormRowToggleSelectionButton(
                    "",
                    "Knowledge Space Domains",
                    "Stores and Retrieves information shared and hosted by"
                        " you and your assistant,"
                        " Reads and learns your files. It's the first AI Assistant "
                        "capable of accurate semantic QA on closed sources of Information.",
                    [
                      "Store and Retrieve Files Conversationally",
                      "Share Closed and Non-Isolated Knowledge Space Domains with Connections",
                      "Unified repository for information of any kind",
                    ],
                    "",
                    [
                      NeuToggleButton(
                        // todo: update with invited galaxy details
                        toggleContainerButtonsList: [
                          NeuToggleTextButtonContainer(
                              buttonTitle:
                              knowledgePodFormRowToggleSelectionButtonThirdFilter[
                              knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex]
                              [0],
                              buttonSecondaryTitle:
                              knowledgePodFormRowToggleSelectionButtonThirdFilter[
                              knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][1],
                              isButtonDisabled: false,
                              isButtonSelected: true)
                              .build(context),
                        ],
                        toggleButtonsIsSelectedList: [false],
                        toggleButtonOnPressedFunction:
                            (index) {},
                      ),
                    ],
                    0,
                    true)
                    .build(context),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "",
                        style: TextStyle(
                            color: AppColors.contentTertiary(
                                context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                        children: [
                          (conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                              3)
                              ? (conversationsPodFormRowToggleSelectionButtonIndex ==
                              2
                              ? TextSpan(
                            text:
                            "Selected Knowledge Space Domains are eligible for free tier credits of 0.06012 EthosCoin"
                                " every month up till 3 Pages hosted on closed Space Knowledge Domains.",
                            style: TextStyle(
                                color: AppColors.blue(
                                    context),
                                fontSize: 12,
                                fontFamily:
                                "Montserrat",
                                fontWeight:
                                FontWeight.w500,
                                height: 1.14285714),
                          )
                              : TextSpan())
                              : TextSpan(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            isSecondaryButtonActive: true,
            secondaryButtonTitle: "Previous",
            contentActionButtonTitle: "Confirm"),
        ProgressHeadingListTile(
            isHeadingActive: isSelectingPaymentMethod,
            isProgressed: isPaymentMethodSelected,
            headingTitle: "Select your payment method"),
        ProgressContentListTile(
            primaryButtonOnPressed: () => {},
            secondaryButtonOnPressed: () =>
            {verifyCardSecondaryButtonOnPressed()},
            isContentActive: isSelectingPaymentMethod,
            contentWidget: Column(
              children: [
                Visibility(
                  visible: isCreatingOwnGalaxy,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource:
                      NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor:
                      NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(
                          context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color:
                        AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 8, vertical: 8),
                    margin: EdgeInsets.symmetric(
                        horizontal: 8, vertical: 8),
                    child: Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: RichText(
                                text: TextSpan(
                                  text:
                                  "Galaxy Pods Subscription",
                                  style: TextStyle(
                                      color: AppColors
                                          .contentPrimary(
                                          context),
                                      fontSize: 14,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400,
                                      height: 1.14285714),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets
                                          .symmetric(
                                          vertical: 4,
                                          horizontal: 8),
                                      child: Text("Identity Pod",
                                          style: TextStyle(
                                              color: AppColors
                                                  .contentSecondary(
                                                  context),
                                              fontSize: 12,
                                              fontFamily:
                                              "Montserrat",
                                              fontWeight:
                                              FontWeight.w500,
                                              height:
                                              1.14285714))),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text(
                                        "${identityPodFormRowToggleSelectionButtonThirdFilter[identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][2]}",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentPrimary(
                                                context),
                                            fontSize: 14,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w600,
                                            height: 1.14285714))),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                      EdgeInsets
                                          .symmetric(
                                          vertical: 4,
                                          horizontal: 8),
                                      child: Text(
                                          "Conversations Pod",
                                          style: TextStyle(
                                              color: AppColors
                                                  .contentSecondary(
                                                  context),
                                              fontSize: 12,
                                              fontFamily:
                                              "Montserrat",
                                              fontWeight:
                                              FontWeight.w500,
                                              height:
                                              1.14285714))),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text(
                                        "${identityPodFormRowToggleSelectionButtonThirdFilter[conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][2]}",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentPrimary(
                                                context),
                                            fontSize: 14,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w600,
                                            height: 1.14285714))),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets
                                          .symmetric(
                                          vertical: 4,
                                          horizontal: 8),
                                      child: Text("Knowledge Pod",
                                          style: TextStyle(
                                              color: AppColors
                                                  .contentSecondary(
                                                  context),
                                              fontSize: 12,
                                              fontFamily:
                                              "Montserrat",
                                              fontWeight:
                                              FontWeight.w500,
                                              height:
                                              1.14285714))),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text(
                                        "${knowledgePodFormRowToggleSelectionButtonThirdFilter[knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][3]}",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentPrimary(
                                                context),
                                            fontSize: 14,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w600,
                                            height: 1.14285714))),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: (identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ||
                                conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                    3 ||
                                knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                    3),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment:
                                    Alignment.centerLeft,
                                    child: Padding(
                                        padding:
                                        EdgeInsets.symmetric(
                                            vertical: 4,
                                            horizontal: 8),
                                        child: Text(
                                            "Galaxy Free Tier Credits",
                                            style: TextStyle(
                                                color: AppColors
                                                    .blue(
                                                    context),
                                                fontSize: 12,
                                                fontFamily:
                                                "Montserrat",
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                height:
                                                1.14285714))),
                                  ),
                                ),
                                Align(
                                  alignment:
                                  Alignment.centerRight,
                                  child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8),
                                      child: Text(
                                          "- ${((identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.32256 : 0.0) + (conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.32256 : 0.0) + (knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 1.2024 : 0.0)).toStringAsFixed(6)}",
                                          style: TextStyle(
                                              color:
                                              AppColors.blue(
                                                  context),
                                              fontSize: 14,
                                              fontFamily:
                                              "Montserrat",
                                              fontWeight:
                                              FontWeight.w600,
                                              height:
                                              1.14285714))),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets
                                          .symmetric(
                                          vertical: 4,
                                          horizontal: 8),
                                      child: Text("Total",
                                          style: TextStyle(
                                              color: AppColors
                                                  .contentSecondary(
                                                  context),
                                              fontSize: 12,
                                              fontFamily:
                                              "Montserrat",
                                              fontWeight:
                                              FontWeight.w800,
                                              height:
                                              1.14285714))),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text(
                                        "${((double.parse(knowledgePodFormRowToggleSelectionButtonThirdFilter[knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][3]) + double.parse(identityPodFormRowToggleSelectionButtonThirdFilter[conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][2]) + double.parse(identityPodFormRowToggleSelectionButtonThirdFilter[identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][2])) - ((identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.32256 : 0.0) + (conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.32256 : 0.0) + (knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 1.2024 : 0.0))).toStringAsFixed(6)}",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentPrimary(
                                                context),
                                            fontSize: 14,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w800,
                                            height: 1.14285714))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: isCreatingOwnGalaxy,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          child: RichText(
                            text: TextSpan(
                              text: "",
                              style: TextStyle(
                                  color:
                                  AppColors.contentTertiary(
                                      context),
                                  fontSize: 12,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  height: 1.14285714),
                              children: [
                                TextSpan(
                                  text:
                                  "After free tier limits you may continue receiving"
                                      " credits, for up to 7 days post which Pod rates will be applicable.",
                                  style: TextStyle(
                                      color: AppColors
                                          .contentTertiary(
                                          context),
                                      fontSize: 12,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                      height: 1.14285714),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32)
                    ],
                  ),
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    lightSource:
                    NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(
                        context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(24)),
                    color: AppColors.backgroundPrimary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 8, vertical: 8),
                  margin: EdgeInsets.symmetric(
                      horizontal: 8, vertical: 8),
                  child: Container(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: RichText(
                              text: TextSpan(
                                text: "Spaces Subscription",
                                style: TextStyle(
                                    color:
                                    AppColors.contentPrimary(
                                        context),
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    height: 1.14285714),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text("Space Identity",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentSecondary(
                                                context),
                                            fontSize: 12,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w500,
                                            height: 1.14285714))),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  child: Text(
                                      "${identityPodFormRowToggleSelectionButtonThirdFilter[identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][3]}",
                                      style: TextStyle(
                                          color: AppColors
                                              .contentPrimary(
                                              context),
                                          fontSize: 14,
                                          fontFamily:
                                          "Montserrat",
                                          fontWeight:
                                          FontWeight.w600,
                                          height: 1.14285714))),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text(
                                        "Space Conversations",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentSecondary(
                                                context),
                                            fontSize: 12,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w500,
                                            height: 1.14285714))),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  child: Text(
                                      "${identityPodFormRowToggleSelectionButtonThirdFilter[conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][3]}",
                                      style: TextStyle(
                                          color: AppColors
                                              .contentPrimary(
                                              context),
                                          fontSize: 14,
                                          fontFamily:
                                          "Montserrat",
                                          fontWeight:
                                          FontWeight.w600,
                                          height: 1.14285714))),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text(
                                        "Space Knowledge Domains (1x)",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentSecondary(
                                                context),
                                            fontSize: 12,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w500,
                                            height: 1.14285714))),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  child: Text(
                                      "${knowledgePodFormRowToggleSelectionButtonThirdFilter[knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][4]}",
                                      style: TextStyle(
                                          color: AppColors
                                              .contentPrimary(
                                              context),
                                          fontSize: 14,
                                          fontFamily:
                                          "Montserrat",
                                          fontWeight:
                                          FontWeight.w600,
                                          height: 1.14285714))),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: (identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ||
                              conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                  3 ||
                              knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex ==
                                  3),
                          child: Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8),
                                      child: Text(
                                          "Space Free Tier Credits",
                                          style: TextStyle(
                                              color:
                                              AppColors.blue(
                                                  context),
                                              fontSize: 12,
                                              fontFamily:
                                              "Montserrat",
                                              fontWeight:
                                              FontWeight.w500,
                                              height:
                                              1.14285714))),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text(
                                        "- ${((identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.0258048 : 0.0) + (conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.0258048 : 0.0) + (knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.0601200 : 0.0)).toStringAsFixed(7)}",
                                        style: TextStyle(
                                            color: AppColors.blue(
                                                context),
                                            fontSize: 14,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w600,
                                            height: 1.14285714))),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8),
                                    child: Text("Total",
                                        style: TextStyle(
                                            color: AppColors
                                                .contentSecondary(
                                                context),
                                            fontSize: 12,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight:
                                            FontWeight.w800,
                                            height: 1.14285714))),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  child: Text(
                                      "${((double.parse(knowledgePodFormRowToggleSelectionButtonThirdFilter[knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][4]) + double.parse(identityPodFormRowToggleSelectionButtonThirdFilter[conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][3]) + double.parse(identityPodFormRowToggleSelectionButtonThirdFilter[identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][3])) - ((identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.0258048 : 0.0) + (conversationsPodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.0258048 : 0.0) + (knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex == 3 ? 0.0601200 : 0.0))).toStringAsFixed(7)}",
                                      style: TextStyle(
                                          color: AppColors
                                              .contentPrimary(
                                              context),
                                          fontSize: 14,
                                          fontFamily:
                                          "Montserrat",
                                          fontWeight:
                                          FontWeight.w800,
                                          height: 1.14285714))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 16),
                    child: RichText(
                      text: TextSpan(
                        text: "",
                        style: TextStyle(
                            color: AppColors.contentTertiary(
                                context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                        children: [
                          TextSpan(
                            text:
                            "After free tier limits you may continue receiving"
                                " credits, for up to 3 days post which Space rates will be applicable.",
                            style: TextStyle(
                                color: AppColors.contentTertiary(
                                    context),
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                CardNumberTextField(
                  hintText: "1234-XXXX-1231-XXXX",
                  cardNumberTextFieldController:
                  cardNumberTextFieldController,
                  isCardExpiryVisible: isCardNumberValidated,
                  cardExpiryTextFieldController:
                  cardExpiryTextFieldController,
                  cardCvvTextFieldController:
                  cardCvvTextFieldController,
                  isCardCvvVisible: isCardExpiryValidated,
                  cardExpiryTextFieldFocusNode:
                  cardExpiryTextFieldFocusNode,
                  cardCvvTextFieldFocusNode:
                  cardCvvTextFieldFocusNode,
                )
              ],
            ),
            isPrimaryButtonDisabled: !(isCardCvvValidated &&
                isCardNumberValidated &&
                isCardExpiryValidated),
            isSecondaryButtonActive: true,
            secondaryButtonTitle: "Previous",
            contentActionButtonTitle: "Verify Card"),
      ],
    );
  }



  verifyCardSecondaryButtonOnPressed() {
    setState(() {
      isSelectingPaymentMethod = false;
      isPaymentMethodSelected = false;
      isKnowledgeSpaceDomainsConfirmed = false;
      isConfirmingKnowledgeSpaceDomains = true;
    });
  }

  validateCardNumber() {
    if (true) {
      if (cardNumberTextFieldController.text.length == 19) {
        setState(() {
          cardNumberText =
              cardNumberTextFieldController.text.replaceAll("-", "");
          isCardNumberValidated = true;
          // cardNumberTextFieldController.text =
          //     "XX-${cardNumberText.substring(12, 16)}";
          cardExpiryTextFieldFocusNode.requestFocus();
        });
      } else {
        setState(() {
          isCardNumberValidated = false;
        });
      }
    }
  }

  validateCardExpiry() {
    if (cardExpiryTextFieldController.text.length == 5) {
      setState(() {
        isCardExpiryValidated = true;
        cardCvvTextFieldFocusNode.requestFocus();
      });
    } else {
      setState(() {
        isCardExpiryValidated = false;
      });
    }
  }

  validateCardCvv() {
    if (cardCvvTextFieldController.text.length == 3) {
      setState(() {
        isCardCvvValidated = true;
        cardCvvTextFieldFocusNode.unfocus();
      });
    } else {
      setState(() {
        isCardCvvValidated = false;
      });
    }
  }



  String getGalaxyIdentityFooterText() {
    if (identityPodFormRowToggleSelectionButtonIndex == 2) {
      if (identitySharingWithList[0]) {
        return "1";
      } else if (identitySharingWithList[1]) {
        return "3";
      } else if (identitySharingWithList[2]) {
        return "5";
      } else {
        return "50";
      }
    } else {
      return "";
    }
  }

  setSelectedGalaxyIdentityPodName() {
    print("getGalaxyIdentityFooterText");
    setState(() {
      if (identityPodFormRowToggleSelectionButtonIndex == 2) {
        if (identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            1) {
          galaxyIdentityPodSelectionHeading =
          "Selected Identity Pod (${identityPodFormRowToggleSelectionButtonThirdFilter[3][0]})";
        } else if (identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            0) {
          galaxyIdentityPodSelectionHeading =
          "Selected Identity Pod (${identityPodFormRowToggleSelectionButtonThirdFilter[identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][0]})";
        } else if (identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            2) {
          print(
              "identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex: $identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex");
          print("lxx");
          galaxyIdentityPodSelectionHeading =
          "Selected Identity Pod (${identityPodFormRowToggleSelectionButtonThirdFilter[identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][0]})";
        } else {
          galaxyIdentityPodSelectionHeading = "Select your Identity Pod";
        }
      } else {
        galaxyIdentityPodSelectionHeading = "Select your Identity Pod";
      }
    });
  }

  String getGalaxyConversationsFooterText() {
    if (conversationsPodFormRowToggleSelectionButtonIndex == 2) {
      if (identitySharingWithList[0]) {
        return "1";
      } else if (identitySharingWithList[1]) {
        return "3";
      } else if (identitySharingWithList[2]) {
        return "5";
      } else {
        return "50";
      }
    } else {
      return "";
    }
  }

  setSelectedGalaxyConversationsPodName() {
    print("getGalaxyConversationsFooterText");
    setState(() {
      if (conversationsPodFormRowToggleSelectionButtonIndex == 2) {
        if (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            1) {
          galaxyConversationsPodSelectionHeading =
          "Selected Conversations Pod (${identityPodFormRowToggleSelectionButtonThirdFilter[3][0]})";
        } else if (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            0) {
          galaxyConversationsPodSelectionHeading =
          "Selected Conversations Pod (${identityPodFormRowToggleSelectionButtonThirdFilter[identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][0]})";
        } else if (conversationsPodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            2) {
          print(
              "identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex: $identityPodFormRowToggleSelectionButtonFirstFilterSelectedIndex");
          print("lxx");
          galaxyConversationsPodSelectionHeading =
          "Selected Conversations Pod (${identityPodFormRowToggleSelectionButtonThirdFilter[4 + identityPodFormRowToggleSelectionButtonSecondFilterSelectedIndex][0]})";
        } else {
          galaxyConversationsPodSelectionHeading =
          "Select your Conversations Pod";
        }
      } else {
        galaxyConversationsPodSelectionHeading =
        "Select your Conversations Pod";
      }
    });
  }


  galaxySelectionDropdownOnChange(galaxy) {
    setState(() {
      isCreatingOwnGalaxy = (galaxy == "accountGalaxyName" ? true : false);
      if (isCreatingOwnGalaxy) {
        selectingGalaxyPrimaryButtonText = "Continue";
        isSelectingGalaxyDisabled = false;
      } else {
        selectingGalaxyPrimaryButtonText = "Accept Invite";
        isSelectingGalaxyDisabled = true;
      }
    });
  }

  bool isSelectingGalaxyIdentityPod = false;
  bool isGalaxyIdentityPodSelected = false;
  final selectingGalaxyIdentityPodHeadingKey = new GlobalKey();
  String galaxyIdentityPodSelectionHeading = "";
  bool isGalaxySelected = false;

  selectedGalaxyIdentityPodPrimaryButtonOnPressed() {
    if (identityPodFormRowToggleSelectionButtonIndex == 2) {
      setSelectedGalaxyIdentityPodName();
      Scrollable.ensureVisible(
          selectingGalaxyConversationsPodHeadingKey.currentContext!);
      setState(() {
        isSelectingGalaxyIdentityPod = false;
        isGalaxyIdentityPodSelected = true;
        isGalaxyConversationsPodSelected = false;
        isSelectingGalaxyConversationsPod = true;
      });
    }
  }

  selectedGalaxyIdentityPodSecondaryButtonOnPressed() {
    setState(() {
      isSelectingGalaxyIdentityPod = false;
      isGalaxyIdentityPodSelected = false;
      isGalaxySelected = false;
      isSelectingGalaxy = true;
      isCreatingOwnGalaxy = false;
    });
  }

  bool isSelectingGalaxyConversationsPod = false;
  bool isGalaxyConversationsPodSelected = false;
  final selectingGalaxyConversationsPodHeadingKey = new GlobalKey();
  String galaxyConversationsPodSelectionHeading = "";

  selectedGalaxyConversationsPodPrimaryButtonOnPressed() {
    if (conversationsPodFormRowToggleSelectionButtonIndex == 2) {
      setSelectedGalaxyConversationsPodName();
      setState(() {
        isSelectingGalaxyConversationsPod = false;
        isGalaxyConversationsPodSelected = true;
        isGalaxyKnowledgePodSelected = false;
        isSelectingGalaxyKnowledgePod = true;
        Scrollable.ensureVisible(
            selectingGalaxyKnowledgePodHeadingKey.currentContext!);
      });
    }
  }

  selectedGalaxyConversationsPodSecondaryButtonOnPressed() {
    setState(() {
      isSelectingGalaxyConversationsPod = false;
      isGalaxyConversationsPodSelected = false;
      isSelectingGalaxyIdentityPod = true;
      isGalaxyIdentityPodSelected = false;
    });
    Scrollable.ensureVisible(
        selectingGalaxyIdentityPodHeadingKey.currentContext!);
  }

  bool isSelectingGalaxyKnowledgePod = false;
  bool isGalaxyKnowledgePodSelected = false;
  String galaxyKnowledgePodSelectionHeading = "";
  final selectingGalaxyKnowledgePodHeadingKey = new GlobalKey();


  selectedGalaxyKnowledgePodPrimaryButtonOnPressed() {
    if (conversationsPodFormRowToggleSelectionButtonIndex == 2) {
      setSelectedGalaxyKnowledgePodName();
      setState(() {
        isSelectingGalaxyKnowledgePod = false;
        isGalaxyKnowledgePodSelected = true;
        isConfirmingIdentitySpace = true;
        isIdentitySpaceConfirmed = false;
      });
    }
  }

  selectedGalaxyKnowledgePodSecondaryButtonOnPressed() {
    setState(() {
      isSelectingGalaxyKnowledgePod = false;
      isGalaxyKnowledgePodSelected = false;
      isSelectingGalaxyConversationsPod = true;
      isGalaxyConversationsPodSelected = false;
    });
  }



  bool isIdentitySpaceConfirmed = false;
  bool isConfirmingIdentitySpace = false;
  String isIdentitySpaceConfirmedHeadingText = "Confirm your Identity Space";

  confirmingIdentitySpacePrimaryButtonOnPressed() {
    setState(() {
      isIdentitySpaceConfirmed = true;
      isConfirmingIdentitySpace = false;
      isConversationsSpaceConfirmed = false;
      isConfirmingConversationsSpace = true;
    });
  }

  confirmingIdentitySpaceSecondaryButtonOnPressed() {
    if (isCreatingOwnGalaxy) {
      setState(() {
        isIdentitySpaceConfirmed = false;
        isConfirmingIdentitySpace = false;
        isSelectingGalaxyKnowledgePod = true;
        isGalaxyKnowledgePodSelected = false;
      });
    } else {
      setState(() {
        isIdentitySpaceConfirmed = false;
        isConfirmingIdentitySpace = false;
        isSelectingGalaxy = true;
        isGalaxySelected = false;
      });
    }
  }

  bool isConversationsSpaceConfirmed = false;
  bool isConfirmingConversationsSpace = false;
  String isConversationsSpaceConfirmedHeadingText =
      "Confirm your Conversations Space";

  confirmingConversationsSpacePrimaryButtonOnPressed() {
    setState(() {
      isConversationsSpaceConfirmed = true;
      isConfirmingConversationsSpace = false;
      isKnowledgeSpaceDomainsConfirmed = false;
      isConfirmingKnowledgeSpaceDomains = true;
    });
  }

  confirmingConversationsSpaceSecondaryButtonOnPressed() {
    setState(() {
      isConversationsSpaceConfirmed = false;
      isConfirmingConversationsSpace = false;
      isIdentitySpaceConfirmed = false;
      isConfirmingIdentitySpace = true;
    });
  }

  bool isKnowledgeSpaceDomainsConfirmed = false;
  bool isConfirmingKnowledgeSpaceDomains = false;
  String isKnowledgeSpaceDomainsConfirmedHeadingText =
      "Confirm your Knowledge Space Domains";

  confirmingKnowledgeSpaceDomainsPrimaryButtonOnPressed() {
    setState(() {
      isKnowledgeSpaceDomainsConfirmed = true;
      isConfirmingKnowledgeSpaceDomains = false;
      isSelectingPaymentMethod = true;
      isPaymentMethodSelected = false;
    });
  }

  confirmingKnowledgeSpaceDomainsSecondaryButtonOnPressed() {
    setState(() {
      isKnowledgeSpaceDomainsConfirmed = false;
      isConfirmingKnowledgeSpaceDomains = false;
      isConversationsSpaceConfirmed = false;
      isConfirmingConversationsSpace = true;
    });
  }

  bool isPaymentMethodSelected = false;
  bool isSelectingPaymentMethod = false;


  checkIsSelectingGalaxyDisabled() {
    // setState(() {
    //   if (identityPodFormRowToggleSelectionButtonIndex == 2 &&
    //       conversationsPodFormRowToggleSelectionButtonIndex == 2) {
    //     isSelectingGalaxyDisabled = false;
    //   } else {
    //     isSelectingGalaxyDisabled = true;
    //   }
    // });
  }



  String getGalaxyKnowledgeFooterText() {
    print("getGalaxyKnowledgeFooterText");
    if (knowledgePodFormRowToggleSelectionButtonIndex == 2) {
      if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
          1) {
        print(
            "knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex: $knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex");
        print("medium");
        return "${knowledgePodFormRowToggleSelectionButtonThirdFilter[3][2]}";
      } else if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
          0) {
        print(
            "knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex: $knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex");
        print("nms");
        return "${knowledgePodFormRowToggleSelectionButtonThirdFilter[knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][2]}";
      } else if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
          2) {
        print(
            "knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex: $knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex");
        print("lxx");
        return "${knowledgePodFormRowToggleSelectionButtonThirdFilter[4 + knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][2]}";
      } else {
        return "";
      }
    } else {
      return "";
    }
  }

  setSelectedGalaxyKnowledgePodName() {
    print("getGalaxyKnowledgeFooterText");
    setState(() {
      if (knowledgePodFormRowToggleSelectionButtonIndex == 2) {
        if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            1) {
          galaxyKnowledgePodSelectionHeading =
          "Selected Knowledge Pod (${knowledgePodFormRowToggleSelectionButtonThirdFilter[3][0]})";
        } else if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            0) {
          galaxyKnowledgePodSelectionHeading =
          "Selected Knowledge Pod (${knowledgePodFormRowToggleSelectionButtonThirdFilter[knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][0]})";
        } else if (knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex ==
            2) {
          print(
              "knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex: $knowledgePodFormRowToggleSelectionButtonFirstFilterSelectedIndex");
          print("lxx");
          galaxyKnowledgePodSelectionHeading =
          "Selected Knowledge Pod (${knowledgePodFormRowToggleSelectionButtonThirdFilter[4 + knowledgePodFormRowToggleSelectionButtonSecondFilterSelectedIndex][0]})";
        } else {
          galaxyKnowledgePodSelectionHeading = "Select your Knowledge Pod";
        }
      } else {
        galaxyKnowledgePodSelectionHeading = "Select your Knowledge Pod";
      }
    });
  }

  List<List<String>> knowledgePodFormRowToggleSelectionButtonFirstFilter = [
    ["nms", ""],
    ["medium", "₹4208/mo"],
    ["lxx", ""],
  ];
  List<List<List<String>>>
  knowledgePodFormRowToggleSelectionButtonSecondFilter = [
    [
      ["2 GB", "₹1935/mo"],
      ["4 GB", "₹2278/mo"],
      ["8 GB", "₹2903/mo"],
    ],
    [
      ["16 GB", "₹4208/mo"],
      ["16 GB", "₹4208/mo"],
      ["16 GB", "₹4208/mo"],
    ],
    [
      ["32 GB", "₹8k/mo"],
      ["30.5 GB", "₹13k/mo"],
      ["512 GB", "₹134k/mo"],
    ]
  ];
  List<List<String>> knowledgePodFormRowToggleSelectionButtonThirdFilter = [
    ["M2N nano", "Share at ₹0/mo", "10", "0.552960", "0.0000000"],
    ["M2N micro", "Share at ₹0/mo", "20", "0.650880", "0.0000000"],
    ["M2N small", "Share at ₹0/mo", "40", "0.829440", "0.0000000"],
    ["M2 medium", "Share at ₹210/mo", "80", "1.202400", "0.0601200"],
    ["M2 large", "Share at ₹420/mo", "120", "2.404800", "0.1202400"],
    ["M2 xlarge", "Share at ₹536/mo", "150", "3.830400", "0.1532160"],
    ["M2 xxlarge", "Share at ₹621/mo", "1300", "38.476800", "0.1775853"],
  ];




  bool isSelectingGalaxyDisabled = false;

  bool invitedToJoinGalaxy = false; // default to not check invitation
  bool isCreatingOwnGalaxy =
  true; // default to launch own galaxy for new account

  bool isCreatingGalaxyIdentityPod = true;
  bool isGalaxyIdentityPodCreated = false;
  String selectingGalaxyHeadingTitle = "Almost there";
  String galaxyName = "Jacob's Galaxy";

  List<String> listOfInvitedGalaxy = [];

  int numberOfCpuCores = 2;
  double numberOfMemorySizeInGb = 2;
  List<int> listOfCpuCores = [2, 4, 8];



  selectedGalaxyPrimaryButtonOnPressed() {
    if (!isSelectingGalaxyDisabled) {
      print("selectedGalaxyButtonOnPressed");
      if (isCreatingOwnGalaxy) {
        if (selectingGalaxyCreateHorizontalNavIndex == 0) {
          setState(() {
            selectingGalaxyCreateHorizontalNavIndex = 1;
          });
        } else if (selectingGalaxyCreateHorizontalNavIndex == 1) {
          setState(() {
            selectingGalaxyCreateHorizontalNavIndex = 2;
          });
        } else if (selectingGalaxyCreateHorizontalNavIndex == 2) {
          setState(() {
            selectingGalaxyCreateHorizontalNavIndex = 3;
          });
        } else if (selectingGalaxyCreateHorizontalNavIndex == 3) {
          // setState(() {
          //   selectingGalaxyCreateHorizontalNavIndex = 2;
          // });
        }
      }
      // setState(() {
      //   isSelectingGalaxy = false;
      //   isGalaxySelected = true;
      //   isSelectingGalaxyIdentityPod = true;
      // });
      // Scrollable.ensureVisible(selectingGalaxyIdentityPodHeadingKey.currentContext!);
    }
  }

  selectedGalaxySecondaryButtonOnPressed() {
    if (isCreatingOwnGalaxy) {
      if (selectingGalaxyCreateHorizontalNavIndex == 0) {
        setState(() {
          isCreatingOwnGalaxy = false;
          // isAccountDOBEntered = false;
          // isEnteringAccountDOB = true;
          isSelectingGalaxy = false;
          isGalaxySelected = false;
        });
        // Scrollable.ensureVisible(enteringAccountDOBHeadingKey.currentContext!);
      } else if (selectingGalaxyCreateHorizontalNavIndex == 1) {
        setState(() {
          selectingGalaxyCreateHorizontalNavIndex = 0;
        });
      } else if (selectingGalaxyCreateHorizontalNavIndex == 2) {
        setState(() {
          selectingGalaxyCreateHorizontalNavIndex = 1;
        });
      } else if (selectingGalaxyCreateHorizontalNavIndex == 3) {
        setState(() {
          selectingGalaxyCreateHorizontalNavIndex = 2;
        });
      }
    }
  }


}