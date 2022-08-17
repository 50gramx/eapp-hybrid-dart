import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/TextField/NameTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/screen/CustomSliverAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// This is the stateful widget that the main application instantiates.
class AccountFirstNameEditorPage extends StatefulWidget {
  const AccountFirstNameEditorPage(
      {Key? key,
      this.firstNameLabel = "First Name",
      this.lastNameLabel = "Last Name"})
      : super(key: key);

  final String firstNameLabel;
  final String lastNameLabel;

  @override
  State<AccountFirstNameEditorPage> createState() =>
      _AccountFirstNameEditorPageState();
}

class _AccountFirstNameEditorPageState
    extends State<AccountFirstNameEditorPage> {
  // allows to toggle progress indicator
  bool isSavingAccountName = false;

  // allows to toggle the save button
  bool isSaveButtonEnabled = false;

  // allows to edit first name text field
  TextEditingController accountFirstNameTextFieldController =
      TextEditingController();

  // allows to edit last name text field
  TextEditingController accountLastNameTextFieldController =
      TextEditingController();

  // allows to focus / defocus text editor
  late FocusNode accountLastNameTextFieldFocusNode;

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
                  text: "Please enter your first and last name",
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
              child: NameTextField(
                      hintText: widget.firstNameLabel,
                      nameTextFieldController:
                          accountFirstNameTextFieldController)
                  .build(context),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
              child: NameTextField(
                hintText: widget.lastNameLabel,
                nameTextFieldController: accountLastNameTextFieldController,
              ).build(context),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
              child:
                  FormInfoText("By continuing you may need to verify your name"
                          " with a valid identity proof.")
                      .build(context),
            ),
            Visibility(
              visible: isSavingAccountName,
              child: AppProgressIndeterminateWidget(),
            ),
            Visibility(
              visible: !isSavingAccountName,
              child: Padding(
                padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
                child: ActionNeuButton(
                    buttonTitle: "Save",
                    isPrimaryButton: true,
                    isPrimaryButtonDisabled: !isSaveButtonEnabled,
                    buttonActionOnPressed: () {
                      saveAccountName();
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
    accountFirstNameTextFieldController.addListener(() {
      if (accountFirstNameTextFieldController.text.length > 0) {
        if (accountFirstNameTextFieldController
                .text[accountFirstNameTextFieldController.text.length - 1] ==
            " ") {
          FocusScope.of(context).unfocus();
          accountLastNameTextFieldFocusNode.requestFocus();
        }
      }
      validateAccountName();
    });

    accountLastNameTextFieldFocusNode = FocusNode();

    accountLastNameTextFieldController.addListener(() {
      if (accountLastNameTextFieldController.text.length > 0) {
        if (accountLastNameTextFieldController
                .text[accountLastNameTextFieldController.text.length - 1] ==
            " ") {
          FocusScope.of(context).unfocus();
        }
      }
      validateAccountName();
    });

    super.initState();
  }

  @override
  void dispose() {
    accountFirstNameTextFieldController.dispose();
    accountLastNameTextFieldController.dispose();
    accountLastNameTextFieldFocusNode.dispose();
    super.dispose();
  }

  // Function to validate account name
  // namely checks whether the number of character is less than 3
  // trims
  validateAccountName() {
    if (accountFirstNameTextFieldController.text.trim().length < 3 ||
        accountLastNameTextFieldController.text.trim().length < 3) {
      setState(() {
        isSaveButtonEnabled = false;
      });
    } else {
      setState(() {
        isSaveButtonEnabled = true;
      });
    }
  }

  // function to save account name
  // namely in the AccountData
  saveAccountName() async {
    setState(() {
      isSavingAccountName = true;
      isSaveButtonEnabled = false;
    });
    Account accountData = Account(
        accountFirstName: accountFirstNameTextFieldController.text.trim(),
        accountLastName: accountLastNameTextFieldController.text.trim());
    await AccountData().saveAccount(accountData);
    Navigator.of(context).pop();
  }
}
