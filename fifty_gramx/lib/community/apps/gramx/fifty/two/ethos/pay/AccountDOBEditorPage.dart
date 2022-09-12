import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/DateTimeField/DateOfBirthField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

/// This is the stateful widget that the main application instantiates.
class AccountDOBEditorPage extends StatefulWidget {
  const AccountDOBEditorPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountDOBEditorPage> createState() => _AccountDOBEditorPageState();
}

class _AccountDOBEditorPageState extends State<AccountDOBEditorPage> {
  // allows to toggle progress indicator
  bool isSavingAccountDOB = false;

  // allows to toggle the save button
  bool isSaveButtonEnabled = false;

  // allows to handle DOB validation
  bool isAccountDOBValidated = false;

  // allows to save the current time
  var dateOfBirth = DateTime.now();

  // allows to edit DOB text field
  TextEditingController dateOfBirthTextFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "About",
          actionLabelText: "",
          isBackEnabled: true,
          isActionEnabled: false,
          trailingButtonCallback: () {},
          onStretchTriggerCallback: () {},
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: RichText(
                text: TextSpan(
                  text: "Please enter your date of birth",
                  style: TextStyle(
                      color: AppColors.contentPrimary(context),
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      height: 1.14285714),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
              child: DateOfBirthField(
                      dateOfBirthTextFieldController:
                          dateOfBirthTextFieldController)
                  .build(context),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
              child: FormInfoText(
                      "By continuing you may need to verify your date of birth"
                      " with a valid identity proof.")
                  .build(context),
            ),
            Visibility(
              visible: isSavingAccountDOB,
              child: AppProgressIndeterminateWidget(),
            ),
            Visibility(
              visible: !isSavingAccountDOB,
              child: Padding(
                padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
                child: ActionNeuButton(
                    buttonTitle: "Save",
                    isPrimaryButton: true,
                    isPrimaryButtonDisabled: !isSaveButtonEnabled,
                    buttonActionOnPressed: () {
                      saveAccountDOB();
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: ActionNeuButton(
                  buttonTitle: "Cancel",
                  isPrimaryButton: false,
                  isPrimaryButtonDisabled: false,
                  buttonActionOnPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
            SizedBox(height: 32),
          ]),
        )
      ]),
    );
  }

  @override
  void initState() {
    dateOfBirthTextFieldController.addListener(() {
      validateDateOfBirth();
    });

    super.initState();
  }

  @override
  void dispose() {
    dateOfBirthTextFieldController.dispose();
    super.dispose();
  }

  // Function to validate account dob
  // namely checks whether the age is less than 18 or not
  validateDateOfBirth() {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    dateOfBirth = dateFormat.parse(dateOfBirthTextFieldController.text);
    DateTime today = DateTime.now();

    int yearDiff = today.year - dateOfBirth.year;
    int monthDiff = today.month - dateOfBirth.month;
    int dayDiff = today.day - dateOfBirth.day;

    if (yearDiff > 18 || yearDiff == 18 && monthDiff >= 0 && dayDiff >= 0) {
      setState(() {
        isSaveButtonEnabled = true;
      });
    } else {
      setState(() {
        isSaveButtonEnabled = false;
      });
    }
  }

  // function to save account name
  // namely in the AccountData
  saveAccountDOB() async {
    setState(() {
      isSavingAccountDOB = true;
      isSaveButtonEnabled = false;
    });
    Account oldAccountData = await AccountData().readAccount();
    Account accountData = Account(
        accountFirstName: oldAccountData.accountFirstName,
        accountLastName: oldAccountData.accountLastName,
        accountBirthAt: Timestamp.fromDateTime(dateOfBirth));
    await AccountData().saveAccount(accountData);
    Navigator.of(context).pop();
  }
}
