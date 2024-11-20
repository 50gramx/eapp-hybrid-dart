import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/pay_in_account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/two/ethos/pay/AccountDOBEditorPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/two/ethos/pay/AccountFirstNameEditorPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/two/ethos/pay/AccountMobileNumberEditorPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/community/onboardingWidgets/addEthosCoinWidget.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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

  String? selectedPaymentOption;

  // Categorized payment options
  final Map<String, List<Map<String, dynamic>>> paymentSections = {
    "Bank Transfer": [
      {
        'title': "Partner Collect",
        'avgTime': "Credits within 24h",
        'fees': "0.7%",
        'description':
            "Bank Transfer with IMPS in real time and partner collects within two banking days for credits with multi-bank support for a seamless experience.",
        'entities': [Icons.account_balance],
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            labelText: "Pulse",
            actionLabelText: "",
            isBackEnabled: false,
            isActionEnabled: false,
            trailingButtonCallback: () {},
            onStretchTriggerCallback: () {},
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            // Dynamically generate sections
            for (var section in paymentSections.keys)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          top: 32, bottom: 4, right: 16, left: 16),
                      child: FormInfoText(
                              "ADD CREDITS VIA ${section}".toUpperCase())
                          .build(context)),
                  SizedBox(height: 12),
                  Container(
                    margin:
                        EdgeInsets.only(top: 4, bottom: 4, right: 16, left: 16),
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: paymentSections[section]!.map((option) {
                        final isSelected =
                            selectedPaymentOption == option['title'];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedPaymentOption = option['title'];
                            });
                          },
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              lightSource: NeumorphicTheme.isUsingDark(context)
                                  ? LightSource.bottomRight
                                  : LightSource.topLeft,
                              shadowLightColor:
                                  NeumorphicTheme.isUsingDark(context)
                                      ? AppColors.gray600
                                      : AppColors.backgroundSecondary(context),
                              shape: NeumorphicShape.flat,
                              depth: 2,
                              disableDepth: false,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.all(Radius.circular(24))),
                              border: NeumorphicBorder(
                                isEnabled: true,
                                color: isSelected
                                    ? AppColors.backgroundInversePrimary(
                                        context)
                                    : AppColors.backgroundSecondary(context),
                                width: 2,
                              ),
                              color: AppColors.backgroundPrimary(context),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Top Row: Title and Fees
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Title

                                    Row(
                                      children: [
                                        Text(
                                          option['title'],
                                          style: TextStyle(
                                            fontSize: isSelected ? 16 : 14,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.bold,
                                            color: isSelected
                                                ? AppColors.contentPrimary(
                                                    context)
                                                : AppColors.contentSecondary(
                                                    context),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.access_time,
                                          size: 12,
                                          color: AppColors.contentTertiary(
                                              context),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          option['avgTime'],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.contentTertiary(
                                                context),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Fees
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? AppColors.backgroundTertiary(
                                                context)
                                            : AppColors
                                                .backgroundInverseTertiary(
                                                    context),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            option['fees']
                                                .toString()
                                                .toUpperCase(),
                                            style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: isSelected
                                                  ? AppColors.contentPrimary(
                                                      context)
                                                  : AppColors
                                                      .contentInversePrimary(
                                                          context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 6),
                                        child: Text(
                                          option['description'],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.contentSecondary(
                                                context),
                                          ),
                                          maxLines: 3,
                                        ),
                                      ),
                                    ),
                                    // Entity Icons/Logos
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: option['entities']
                                          .map<Widget>((icon) => Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2),
                                                child: Icon(
                                                  icon,
                                                  size: 18,
                                                  color: AppColors
                                                      .contentSecondary(
                                                          context),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            SizedBox(height: 24),
            Visibility(
              visible: selectedPaymentOption != null,
              child: AddEthosCoinWidget(),
            ),
            // -----------------------------------------
            // BALANCE
            // -----------------------------------------
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("BALANCE").build(context)),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
                future: PayInAccountService.accountEthosCoinBalance(),
                builder: (context, snapshot) {
                  var titleText = "Credits INR";
                  var errorText = "Currently Unavailable";
                  var authText = "Access Issue";
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return BasicConfigurationItem(
                        titleText: titleText, subtitleText: "Loading");
                  } else if (snapshot.hasError) {
                    return BasicConfigurationItem(
                        titleText: titleText, subtitleText: errorText);
                  } else {
                    if (snapshot.data!.responseMeta.metaDone == false) {
                      return BasicConfigurationItem(
                          titleText: titleText, subtitleText: authText);
                    } else {
                      return BasicConfigurationItem(
                          titleText: titleText,
                          subtitleText:
                              "${(snapshot.data!.balance).toStringAsFixed(2)}");
                    }
                  }
                }),

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
          ]))
        ],
      ),
    );
  }

  void _openAddEthosCoinWidget() {
    // Trigger any additional logic if needed
    print("Opening AddEthosCoinWidget for $selectedPaymentOption");
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
