
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/pay_in_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/listItem/standard/artworksmall/labelWIthSupportParaWithIconTrailing.dart';
import 'package:fifty_gramx/widgets/components/screen/appTabBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/switchConfigurationItem.dart';
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
      var assistant = await DiscoverAccountAssistantService.getAccountAssistantByAccount(account);
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
      backgroundColor: AppColors.backgroundSecondary(context),
      appBar: CustomAppBar(labelText: "EthosCoin", actionLabelText: "Save", isBackEnabled: true,trailingButtonCallback: () {}, isActionEnabled: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 4, right: 16, left: 16),
                child: FormInfoText("CURRENT VALUE").build(context)),
            BasicConfigurationItem(titleText: "INR", subtitleText: "1.49"),

            Container(
                margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("BALANCE").build(context)),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
              future: PayInAccountService.accountEthosCoinBalance(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return BasicConfigurationItem(titleText: "EthosCoin", subtitleText: "0.00");
                  } else {
                    if (snapshot.data!.responseMeta.metaDone == false) {
                      return BasicConfigurationItem(titleText: "EthosCoin", subtitleText: "0.00");
                    } else {
                      return BasicConfigurationItem(titleText: "EthosCoin", subtitleText: "${(snapshot.data!.balance).toStringAsFixed(2)}");
                    }

                  }
                }),

            Container(
                margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("CREDIT HOURS").build(context)),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
                future: PayInAccountService.accountEthosCoinBalance(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // TODO: Change this service
                    return BasicConfigurationItem(titleText: "X1 Containers", subtitleText: "750");
                  } else {
                    if (snapshot.data!.responseMeta.metaDone == false) {
                      return BasicConfigurationItem(titleText: "X1 Containers", subtitleText: "750");
                    } else {
                      return BasicConfigurationItem(titleText: "X1 Containers", subtitleText: "750");
                    }

                  }
                }),
            FutureBuilder<AccountEthosCoinBalanceResponse>(
                future: PayInAccountService.accountEthosCoinBalance(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // TODO: Change this service
                    return BasicConfigurationItem(titleText: "K1 Containers", subtitleText: "0");
                  } else {
                    if (snapshot.data!.responseMeta.metaDone == false) {
                      return BasicConfigurationItem(titleText: "K1 Containers", subtitleText: "0");
                    } else {
                      return BasicConfigurationItem(titleText: "K1 Containers", subtitleText: "0");
                    }
                  }
                }),

            Container(
                margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("ADD ETHOSCOIN").build(context)),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: AddEthosCoinWidget(updateSelectedCoinBalance: (productDetails) {})
            ),

          ],
        ),
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