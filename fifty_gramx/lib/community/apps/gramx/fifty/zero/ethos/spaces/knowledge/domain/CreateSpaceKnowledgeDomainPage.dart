import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/pay_in_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/createSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/knowledge/domain/SelectSpaceKnowledgeDomainCollarPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/TextField/NameTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/screen/appTabBar.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class CreateSpaceKnowledgeDomainPage extends StatefulWidget {
  const CreateSpaceKnowledgeDomainPage({
    Key? key,
    this.createIsolatedDomain = true,
  }) : super(key: key);

  final bool createIsolatedDomain;

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
  SpaceKnowledgeDomainCollarEnum selectedDomainCollarEnum =
      SpaceKnowledgeDomainCollarEnum.BLUE_COLLAR;
  bool noTierBenefitsRemainingForClosedDomainLaunchThisMonth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary(context),
      appBar: CustomAppBar(
          labelText: "Launch domain",
          actionLabelText: "",
          isBackEnabled: false,
          trailingButtonCallback: () {},
          isActionEnabled: false),
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
                    hintText: "Type knowledge domain name",
                    nameTextFieldController: domainNameTextFieldController)),
            Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
                child: NameTextField(
                  hintText:
                      "Type ${widget.createIsolatedDomain ? "isolated" : "shared"} knowledge domain short description",
                  nameTextFieldController: domainDescriptionTextFieldController,
                  isTwoLines: true,
                )),
            SelectorConfigurationItem(
              titleText: "Domain Collar",
              subtitleText: selectedDomainCollarEnum.name
                  .substring(0, selectedDomainCollarEnum.name.length - 7),
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
                            createSpaceKnowledgeDomain();
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

  @override
  void initState() {
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
            selectedDomainCollarEnum,
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

  void _pushSelectSpaceKnowledgeDomainCollarPage() {
    var isHorizontalNavigation = true;
    // If it's not horizontal navigation,
    // we should use the rootNavigator.
    Navigator.of(context, rootNavigator: !isHorizontalNavigation).push(
      _buildAdaptivePageRoute(
        builder: (context) => SelectSpaceKnowledgeDomainCollarPage(
            selectedCollarEnum: selectedDomainCollarEnum,
            selectedSpaceKnowledgeDomainCollarEnum: (value) {
              setState(() {
                selectedDomainCollarEnum = value;
              });
            }),
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
      Platform.isAndroid
          ? MaterialPageRoute(
              builder: builder,
              fullscreenDialog: fullscreenDialog,
            )
          : CupertinoPageRoute(
              builder: builder,
              fullscreenDialog: fullscreenDialog,
            );
}
