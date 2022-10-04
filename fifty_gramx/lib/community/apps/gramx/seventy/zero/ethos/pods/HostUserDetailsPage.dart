import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/button/fifty/two/ethos/pay/paymentButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/data/hostUserData.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/PasswordTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// This is the stateful widget that the main application instantiates.
class HostUserDetailsPage extends StatefulWidget {
  const HostUserDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HostUserDetailsPage> createState() => _HostUserDetailsPageState();
}

class _HostUserDetailsPageState extends State<HostUserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "Update Host User",
          actionLabelText: "",
          isBackEnabled: true,
          isActionEnabled: false,
          trailingButtonCallback: () {},
          onStretchTriggerCallback: () {},
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
                child: PasswordTextField(
                    hintText: "User's Password",
                    nameTextFieldController: userPasswordTextFieldController)),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: PaymentButton(
                  productName: "Space Licence",
                  productPrice: 300,
                  productTenure: "yr",
                  isPrimaryButton: true,
                  isPrimaryButtonDisabled: false,
                  buttonActionOnPressed: () {
                    saveHostUserPassword();
                  }),
            ),
            SizedBox(height: 32),
          ]),
        )
      ]),
    );
  }

  bool isPasswordGiven = false;

  TextEditingController userPasswordTextFieldController =
      TextEditingController();
  var userPassword = "";

  updateUserPassword() {
    userPassword = userPasswordTextFieldController.text;
    if (userPassword.length > 3) {
      setState(() {
        isPasswordGiven = true;
      });
    } else {
      isPasswordGiven = false;
    }
  }

  saveHostUserPassword() async {
    await HostUserData().saveHostUserPassword(userPassword);
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    userPasswordTextFieldController.addListener(() {
      updateUserPassword();
    });
    super.initState();
  }

  @override
  void dispose() {
    userPasswordTextFieldController.dispose();
    super.dispose();
  }
}
