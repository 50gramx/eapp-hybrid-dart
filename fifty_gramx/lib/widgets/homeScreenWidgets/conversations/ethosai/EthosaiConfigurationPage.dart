
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/listItem/standard/artworksmall/labelWIthSupportParaWithIconTrailing.dart';
import 'package:fifty_gramx/widgets/components/screen/appTabBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/switchConfigurationItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class EthosaiConfigurationPage extends StatefulWidget {
  const EthosaiConfigurationPage({
    Key? key,
  }) : super(key: key);


  @override
  State<EthosaiConfigurationPage> createState() =>
      _EthosaiConfigurationPageState();
}

class _EthosaiConfigurationPageState
    extends State<EthosaiConfigurationPage> {
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
      appBar: CustomAppBar(labelText: "Ethosai", actionLabelText: "Save", isBackEnabled: true,trailingButtonCallback: () {}, isActionEnabled: false,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 4, right: 16, left: 16),
                child: FormInfoText("ABOUT ETHOSAI").build(context)),
            BasicConfigurationItem(titleText: "Code", subtitleText: "${accountAssistant.accountAssistantNameCode < 10 ? "0${accountAssistant.accountAssistantNameCode}" : accountAssistant.accountAssistantNameCode}"),
            BasicConfigurationItem(titleText: "Name", subtitleText: "${accountAssistant.accountAssistantName}"),


            Container(
                margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("PREFERRED LANGUAGES").build(context)),
            BasicConfigurationItem(titleText: "First Language", subtitleText: "English"),
            BasicConfigurationItem(titleText: "Second Language", subtitleText: "English"),
            Visibility(
                visible: false,
                child: SwitchConfigurationItem(titleText: "Learn more on the go", switchValue: learnMoreOTGValue, switchOnChanged: (value) {learnLanguageOTG(value);},)),
            Visibility(
              visible: false,
              child: Container(
                  margin: EdgeInsets.only(top: 0, bottom: 4, right: 16, left: 16),
                  child: FormInfoText("Choose your native language and most used language for Ethosai to better understand dialects and converse with others.").build(context)),
            ),


            Visibility(
              visible: false,
              child: Container(
                  margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                  child: FormInfoText("SPACE KNOWLEDGE ACTIONS").build(context)),
            ),
            Visibility(
                visible: false,
                child: SelectorConfigurationItem(titleText: "Ask Question", subtitleText: "", selectorCallback: () {},)),
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