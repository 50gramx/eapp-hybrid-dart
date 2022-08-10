import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/pay_in_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/ethoscoin/AccountDOBEditorPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/ethoscoin/AccountFirstNameEditorPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/ethoscoin/AccountMobileNumberEditorPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/widgets/onboardingWidgets/addEthosCoinWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class EthosCoinConfigurationPage extends StatefulWidget {
  const EthosCoinConfigurationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EthosCoinConfigurationPage> createState() =>
      _EthosCoinConfigurationPageState();
}

class _EthosCoinConfigurationPageState
    extends State<EthosCoinConfigurationPage> {
  var accountAssistant = AccountAssistant.getDefault();
  bool isAccountNotFound = true;

  @override
  void initState() {
    updateAccountAssistantDetails();
    super.initState();
  }

  updateAccountAssistantDetails() async {
    Account account = await AccountData().readAccount();
    if (account.accountId != "") {
      var assistant =
          await DiscoverAccountAssistantService.getAccountAssistantByAccount(
              account);
      setState(() {
        accountAssistant = assistant;
        isAccountNotFound = false;
      });
    } else {
      setState(() {
        isAccountNotFound = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            labelText: "Ethos Pay",
            actionLabelText: "",
            isBackEnabled: true,
            isActionEnabled: false,
            trailingButtonCallback: () {},
            onStretchTriggerCallback: () {},
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            // -----------------------------------------
            // ABOUT First Name Last Name
            // -----------------------------------------
            Container(
                margin:
                    EdgeInsets.only(top: 16, bottom: 4, right: 16, left: 16),
                child: FormInfoText("ABOUT").build(context)),
            FutureBuilder<String>(
              future: AccountData().readAccountId(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  if (snap.data == "") {
                    return FutureBuilder<Account>(
                        future: AccountData().readAccount(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return AppProgressIndeterminateWidget();
                          } else {
                            if (snap.data!.accountFirstName != "" ||
                                snap.data!.accountLastName != "") {
                              return SelectorConfigurationItem(
                                  titleText: snap.data!.accountFirstName,
                                  subtitleText: snap.data!.accountLastName,
                                  selectorCallback: () {
                                    AppPushPage().pushHorizontalPage(
                                        context,
                                        AccountFirstNameEditorPage(
                                          firstNameLabel:
                                              snap.data!.accountFirstName,
                                          lastNameLabel:
                                              snap.data!.accountLastName,
                                        ));
                                  });
                            } else {
                              return SelectorConfigurationItem(
                                  titleText: "First Name",
                                  subtitleText: "Last Name",
                                  selectorCallback: () {
                                    AppPushPage().pushHorizontalPage(
                                        context, AccountFirstNameEditorPage());
                                  });
                            }
                          }
                        });
                  } else {
                    return FutureBuilder<Account>(
                        future: AccountData().readAccount(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return AppProgressIndeterminateWidget();
                          } else {
                            return SelectorConfigurationItem(
                                titleText: snap.data!.accountFirstName,
                                subtitleText: snap.data!.accountLastName,
                                selectorCallback: () {
                                  AppPushPage().pushHorizontalPage(
                                      context,
                                      AccountFirstNameEditorPage(
                                          firstNameLabel:
                                              snap.data!.accountFirstName,
                                          lastNameLabel:
                                              snap.data!.accountLastName));
                                });
                          }
                        });
                  }
                }
              },
            ),
            FutureBuilder<String>(
              future: AccountData().readAccountId(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  if (snap.data == "") {
                    return FutureBuilder<Account>(
                        future: AccountData().readAccount(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return AppProgressIndeterminateWidget();
                          } else {
                            if (snap.data!.hasAccountBirthAt()) {
                              DateTime today = DateTime.now();
                              return SelectorConfigurationItem(
                                  titleText: "Age",
                                  subtitleText:
                                      "${today.year - snap.data!.accountBirthAt.toDateTime().year}",
                                  selectorCallback: () {
                                    AppPushPage().pushHorizontalPage(
                                        context, AccountDOBEditorPage());
                                  });
                            } else {
                              return SelectorConfigurationItem(
                                  titleText: "Date of Birth",
                                  subtitleText: "N/A",
                                  selectorCallback: () {
                                    AppPushPage().pushHorizontalPage(
                                        context, AccountDOBEditorPage());
                                  });
                            }
                          }
                        });
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),
            FutureBuilder<String>(
              future: AccountData().readAccountId(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  if (snap.data == "") {
                    return SelectorConfigurationItem(
                        titleText: "Ethos Name",
                        subtitleText: "Ethos Code",
                        selectorCallback: () {
//                              AppPushPage().pushHorizontalPage(
//                                  context, MicroK8sInstallerPage());
                        });
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),

            // -----------------------------------------
            // CONTACT
            // -----------------------------------------
            FutureBuilder<String>(
              future: AccountData().readAccountId(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  if (snap.data == "") {
                    return FutureBuilder<Account>(
                        future: AccountData().readAccount(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return AppProgressIndeterminateWidget();
                          } else {
                            return SelectorConfigurationItem(
                                titleText: "Primary Mobile Number",
                                subtitleText: "Enter",
                                selectorCallback: () {
                                  AppPushPage().pushHorizontalPage(
                                      context, AccountMobileNumberEditorPage());
                                });
                          }
                        });
                  } else {
                    return FutureBuilder<Account>(
                        future: AccountData().readAccount(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return AppProgressIndeterminateWidget();
                          } else {
                            return BasicConfigurationItem(
                                titleText:
                                    "***${snap.data!.accountMobileNumber.substring(6, 9)}",
                                subtitleText: "Verified");
                          }
                        });
                  }
                }
              },
            ),

            // -----------------------------------------
            // SPACE ID (ONLY WHEN LOGGED IN)
            // -----------------------------------------
            FutureBuilder<String>(
              future: AccountData().readAccountId(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data != "") {
                    return Container(
                        margin: EdgeInsets.only(
                            top: 16, bottom: 4, right: 16, left: 16),
                        child: FormInfoText("SPACE ID").build(context));
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),
            FutureBuilder<Account>(
              future: AccountData().readAccount(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else if (snap.connectionState == ConnectionState.none) {
                  return SizedBox();
                } else {
                  if (snap.data!.accountId == "") {
                    return FutureBuilder<AccountAssistant>(
                        future: DiscoverAccountAssistantService
                            .getAccountAssistantByAccount(snap.data!),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return SizedBox();
                          } else {
                            if (snap.hasError) {
                              return SizedBox();
                            } else {
                              return BasicConfigurationItem(
                                  titleText: snap.data!.accountAssistantName,
                                  subtitleText:
                                      "${snap.data!.accountAssistantNameCode}");
                            }
                          }
                        });
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),

            // -----------------------------------------
            // BALANCE
            // -----------------------------------------
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("BALANCE").build(context)),
            BasicConfigurationItem(titleText: "Wallet", subtitleText: "0.00"),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
                future: PayInAccountService.accountEthosCoinBalance(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return BasicConfigurationItem(
                        titleText: "Ethos Coin", subtitleText: "0.00");
                  } else if (snapshot.hasError) {
                    return BasicConfigurationItem(
                        titleText: "Ethos Coin", subtitleText: "0.00");
                  } else {
                    if (snapshot.data!.responseMeta.metaDone == false) {
                      return BasicConfigurationItem(
                          titleText: "Ethos Coin", subtitleText: "0.00");
                    } else {
                      return BasicConfigurationItem(
                          titleText: "Ethos Coin",
                          subtitleText:
                              "${(snapshot.data!.balance).toStringAsFixed(2)}");
                    }
                  }
                }),

            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("CREDIT HOURS").build(context)),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
                future: PayInAccountService.accountEthosCoinBalance(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // TODO: Change this service
                    return BasicConfigurationItem(
                        titleText: "X1 Containers", subtitleText: "NA");
                  } else if (snapshot.hasError) {
                    return BasicConfigurationItem(
                        titleText: "X1 Containers", subtitleText: "NA");
                  } else {
                    if (snapshot.data!.responseMeta.metaDone == false) {
                      return BasicConfigurationItem(
                          titleText: "X1 Containers", subtitleText: "750");
                    } else {
                      return BasicConfigurationItem(
                          titleText: "X1 Containers", subtitleText: "750");
                    }
                  }
                }),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
                future: PayInAccountService.accountEthosCoinBalance(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // TODO: Change this service
                    return BasicConfigurationItem(
                        titleText: "K1 Containers", subtitleText: "NA");
                  } else if (snapshot.hasError) {
                    return BasicConfigurationItem(
                        titleText: "K1 Containers", subtitleText: "NA");
                  } else {
                    if (snapshot.data!.responseMeta.metaDone == false) {
                      return BasicConfigurationItem(
                          titleText: "K1 Containers", subtitleText: "0");
                    } else {
                      return BasicConfigurationItem(
                          titleText: "K1 Containers", subtitleText: "0");
                    }
                  }
                }),

            Visibility(
                visible: Platform.isAndroid || Platform.isIOS,
                child: Container(
                    margin: EdgeInsets.only(
                        top: 32, bottom: 4, right: 16, left: 16),
                    child: FormInfoText("ADD ETHOSCOIN").build(context))),
            Visibility(
                visible: Platform.isAndroid || Platform.isIOS,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: AddEthosCoinWidget(
                        updateSelectedCoinBalance: (productDetails) {}))),
          ]))
        ],
      ),
    );
  }

  bool learnMoreOTGValue = false;

  learnLanguageOTG(bool value) {
    if (learnMoreOTGValue) {
      setState(() {
        learnMoreOTGValue = false;
      });
    } else {
      setState(() {
        learnMoreOTGValue = true;
      });
    }
  }
}
