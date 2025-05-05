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

import 'dart:io';

import 'package:eapp_dart_domain/ethos/elint/collars/DC499999994.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/collars/DC499999998.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/collars/DC500000000.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/pay_in_account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/NameTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/knowledge/domain/SelectSpaceKindDomainCollarLabelPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/createSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/product/domain/createSpaceProductDomainService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class CreateSpaceKnowledgeDomainPage extends StatefulWidget {
  const CreateSpaceKnowledgeDomainPage({
    Key? key,
    this.createIsolatedDomain = true,
    this.spaceKind = SpaceKind.KNOWLEDGE,
  }) : super(key: key);

  final bool createIsolatedDomain;
  final SpaceKind spaceKind;

  @override
  State<CreateSpaceKnowledgeDomainPage> createState() =>
      _CreateSpaceKnowledgeDomainPageState();
}

class _CreateSpaceKnowledgeDomainPageState
    extends State<CreateSpaceKnowledgeDomainPage> {
  Space mySpace = Space.getDefault();
  Account myAccount = Account.getDefault();
  bool isPendingSpaceDetails = true;

  TextEditingController domainNameTextFieldController = TextEditingController();
  TextEditingController domainDescriptionTextFieldController =
      TextEditingController();
  bool domainNameValidated = false;
  bool domainDescriptionValidated = false;
  late String selectedDomainCollarLabel;
  late dynamic selectedDomainCollar;
  bool noTierBenefitsRemainingForClosedDomainLaunchThisMonth = false;

  final knowledgeCollarOptions = [
    {'label': 'WHITE', 'value': SpaceKnowledgeDomainCollarEnum.WHITE_COLLAR},
  ];

  final serviceCollarOptions = [
    {'label': 'DC500000000', 'value': DC500000000()},
    {'label': 'DC499999999', 'value': DC499999999()},
    {'label': 'DC499999998', 'value': DC499999998()},
  ];

  final productCollarOptions = [
    {'label': 'DC499999994', 'value': DC499999994()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            FutureBuilder<ResponseMeta>(
              future: PayInAccountService
                  .isTierBenefitsRemainingForClosedDomainLaunchPerMonth(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snapshot.data!.metaDone) {
                    return SizedBox();
                  } else {
                    return FutureBuilder<AccountEthosCoinBalanceResponse>(
                      future: PayInAccountService.accountEthosCoinBalance(),
                      builder: (context, balanceSnapshot) {
                        if (balanceSnapshot.connectionState ==
                            ConnectionState.waiting) {
                          return SizedBox();
                        } else if (balanceSnapshot.data!.balance > 51) {
                          return SizedBox();
                        } else {
                          return Neumorphic(
                            margin: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
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
                                color: AppColors.backgroundSecondary(context),
                                width: 2,
                              ),
                              depth: -5,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(24)),
                              color: AppColors.backgroundSecondary(context),
                            ),
                            child: MaterialBanner(
                              backgroundColor:
                                  AppColors.backgroundSecondary(context),
                              content: NeumorphicText(
                                "Your EthosCoin balance is low. Please add EthosCoin or upgrade your tier for free benefits to continue launching domains.",
                                style: NeumorphicStyle(
                                  color: AppColors.contentPrimary(context),
                                  lightSource:
                                      NeumorphicTheme.isUsingDark(context)
                                          ? LightSource.bottomRight
                                          : LightSource.topLeft,
                                  shadowLightColor: NeumorphicTheme.isUsingDark(
                                          context)
                                      ? AppColors.gray600
                                      : AppColors.backgroundSecondary(context),
                                  border: NeumorphicBorder(
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 0.25),
                                ),
                                textAlign: TextAlign.start,
                                textStyle: NeumorphicTextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25),
                              ),
                              actions: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: ActionNeuButton(
                                      buttonTitle: "ADD ETHOSCOIN",
                                      buttonActionOnPressed: () {},
                                      noBorder: true,
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: ActionNeuButton(
                                      buttonTitle: "UPGRADE TIER",
                                      buttonActionOnPressed: () {},
                                      isPrimaryButton: true,
                                    )),
                              ],
                            ),
                          );
                        }
                      },
                    );
                  }
                }
              },
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
                child: NameTextField(
                    hintText:
                        "Type ${widget.spaceKind.name.toLowerCase()} domain name",
                    nameTextFieldController: domainNameTextFieldController)),
            Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
                child: NameTextField(
                  hintText:
                      "Type ${widget.createIsolatedDomain ? "isolated" : "shared"} ${widget.spaceKind.name.toLowerCase()} domain short description",
                  nameTextFieldController: domainDescriptionTextFieldController,
                  isTwoLines: true,
                )),
            SelectorConfigurationItem(
              titleText: "Domain Collar",
              subtitleText: selectedDomainCollarLabel,
              selectorCallback: () {
                _pushSelectSpaceKnowledgeDomainCollarPage();
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: ActionNeuButton(
                        buttonTitle: "Cancel",
                        buttonActionOnPressed: () {
                          Navigator.of(context).pop();
                        },
                        isPrimaryButton: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(right: 16, left: 16),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: ActionNeuButton(
                          buttonTitle: "Launch",
                          buttonActionOnPressed: () {
                            if (widget.spaceKind == SpaceKind.KNOWLEDGE) {
                              createSpaceKnowledgeDomain();
                            } else if (widget.spaceKind == SpaceKind.SERVICE) {
                              createSpaceProductDomain();
                            } else if (widget.spaceKind == SpaceKind.PRODUCT) {
                              createSpaceProductDomain();
                            }
                          },
                          isPrimaryButton: true,
                          isPrimaryButtonDisabled:
                              !domainDescriptionValidated &&
                                  !domainNameValidated,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  onSelectCollarLabel({String domainCollarLabel = ""}) {
    dynamic sdc = "";
    if (widget.spaceKind == SpaceKind.KNOWLEDGE) {
      if (domainCollarLabel == "") {
        selectedDomainCollarLabel =
            knowledgeCollarOptions.first["label"]!.toString();
        sdc = knowledgeCollarOptions.first["value"]!;
      } else {
        var collarOption = knowledgeCollarOptions
            .firstWhere((co) => co["label"] == domainCollarLabel);
        sdc = collarOption["value"]!;
      }
    } else if (widget.spaceKind == SpaceKind.SERVICE) {
      if (domainCollarLabel == "") {
        selectedDomainCollarLabel =
            serviceCollarOptions.first["label"]!.toString();
        sdc = serviceCollarOptions.first["value"]!;
      } else {
        var collarOption = serviceCollarOptions
            .firstWhere((co) => co["label"] == domainCollarLabel);
        sdc = collarOption["value"]!;
      }
    } else if (widget.spaceKind == SpaceKind.PRODUCT) {
      if (domainCollarLabel == "") {
        selectedDomainCollarLabel =
            productCollarOptions.first["label"]!.toString();
        sdc = productCollarOptions.first["value"]!;
      } else {
        var collarOption = productCollarOptions
            .firstWhere((co) => co["label"] == domainCollarLabel);
        sdc = collarOption["value"]!;
      }
    } else {
      selectedDomainCollarLabel = "";
      selectedDomainCollar = "";
    }
    setState(() {
      selectedDomainCollar = sdc;
    });
  }

  @override
  void initState() {
    onSelectCollarLabel();
    domainNameTextFieldController.addListener(() {
      validateDomainName();
    });
    domainDescriptionTextFieldController.addListener(() {
      validateDomainDescription();
    });
    super.initState();
  }

  @override
  dispose() {
    domainNameTextFieldController.dispose();
    domainDescriptionTextFieldController.dispose();
    super.dispose();
  }

  validateDomainName() {
    if (domainNameTextFieldController.text.trim().length < 3) {
      setState(() {
        domainNameValidated = false;
      });
    } else {
      setState(() {
        domainNameValidated = true;
      });
    }
  }

  validateDomainDescription() {
    if (domainDescriptionTextFieldController.text.trim().length < 10) {
      setState(() {
        domainDescriptionValidated = false;
      });
    } else {
      setState(() {
        domainDescriptionValidated = true;
      });
    }
  }

  createSpaceKnowledgeDomain() async {
    var createSpaceKnowledgeDomainResponse =
        await CreateSpaceKnowledgeDomainService.createSpaceKnowledgeDomain(
            domainNameTextFieldController.text.trim(),
            domainDescriptionTextFieldController.text.trim(),
            selectedDomainCollar,
            widget.createIsolatedDomain);

    if (createSpaceKnowledgeDomainResponse.responseMeta.metaDone) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                "Successfully Launched Domain. Taking you to your spaces page")),
      );
      await Future.delayed(Duration(seconds: 1));
      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                createSpaceKnowledgeDomainResponse.responseMeta.metaMessage)),
      );
    }
  }

  createSpaceProductDomain() async {
    var createSpaceProductDomainResponse =
        await CreateSpaceProductDomainService.createDC499999994SPD(
            domainNameTextFieldController.text.trim(),
            domainDescriptionTextFieldController.text.trim(),
            widget.createIsolatedDomain);

    if (createSpaceProductDomainResponse.metaDone) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                "Successfully Launched Domain. Taking you to your spaces page")),
      );
      await Future.delayed(Duration(seconds: 1));
      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(createSpaceProductDomainResponse.metaMessage)),
      );
    }
  }

  void _pushSelectSpaceKnowledgeDomainCollarPage() {
    var isHorizontalNavigation = true;
    // If it's not horizontal navigation,
    // we should use the rootNavigator.
    Navigator.of(context, rootNavigator: !isHorizontalNavigation).push(
      _buildAdaptivePageRoute(
        builder: (context) => SelectSpaceKindDomainCollarLabelPage(
          selectedCollarLabel: selectedDomainCollarLabel,
          onSelectCollarLabel: (selectedLabel) {
            print("selectedLabelCollar: ${selectedLabel}");
            onSelectCollarLabel(domainCollarLabel: selectedLabel);
          },
          spaceKind: widget.spaceKind,
        ),
        fullscreenDialog: !isHorizontalNavigation,
      ),
    );
  }

  // Flutter will use the fullscreenDialog property to change the animation
  // and the app bar's left icon to an X instead of an arrow.
  PageRoute<T> _buildAdaptivePageRoute<T>({
    required WidgetBuilder builder,
    bool fullscreenDialog = false,
  }) =>
      kIsWeb
          ? MaterialPageRoute(
              builder: builder,
              fullscreenDialog: fullscreenDialog,
            )
          : (Platform.isAndroid
              ? MaterialPageRoute(
                  builder: builder,
                  fullscreenDialog: fullscreenDialog,
                )
              : CupertinoPageRoute(
                  builder: builder,
                  fullscreenDialog: fullscreenDialog,
                ));
}
