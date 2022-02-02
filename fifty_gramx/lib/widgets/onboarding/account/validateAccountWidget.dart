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

import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/account/createAccountService.dart';
import 'package:fifty_gramx/widgets/onboarding/account/verifyAccountWidget.dart';
import 'package:flutter/material.dart';

class ValidateAccountData {
  bool accountExists;
  String accountMobileNumber;
  ValidateAccountResponse validateAccountResponse;
  ValidateAccountWithMobileResponse validateAccountWithMobileResponse;

  ValidateAccountData(
      {required this.accountExists,
      required this.accountMobileNumber,
      required this.validateAccountResponse,
      required this.validateAccountWithMobileResponse});
}

/// This is the stateful widget that the main application instantiates.
class ValidateAccountStatefulWidget extends StatefulWidget {
  const ValidateAccountStatefulWidget({Key? key}) : super(key: key);

  @override
  State<ValidateAccountStatefulWidget> createState() =>
      _ValidateAccountStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ValidateAccountStatefulWidgetState
    extends State<ValidateAccountStatefulWidget> {
  final TextEditingController _accountMobileNumberTextFieldController =
      TextEditingController();

  @override
  void dispose() {
    _accountMobileNumberTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please enter your mobile number"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _accountMobileNumberTextFieldController,
            keyboardType: TextInputType.phone,
            maxLength: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Mobile Number',
            ),
          ),
          ElevatedButton(
            child: Text("Verify"),
            onPressed: () => onValidateAccountButtonPress(),
          )
        ],
      ),
    );
  }

  onValidateAccountButtonPress() async {
    print("onValidateAccountButtonPress");
    if (_accountMobileNumberTextFieldController.text.length != 10) {
      print("returning because of invalid mobile number");
      return null;
    }
    print("calling validate account mobile");
    var validateAccountResponse = await AccessAccountService.validateAccount(
        "+91", _accountMobileNumberTextFieldController.text);

    var validateAccountWithMobileResponse =
        ValidateAccountWithMobileResponse.getDefault();
    if (validateAccountResponse.accountExists == false) {
      print("account doesn't exists");
      validateAccountWithMobileResponse =
          await CreateAccountService.validateAccountWithMobile(
              "+91", _accountMobileNumberTextFieldController.text);
    } else {
      print("account exists");
    }
    final validateAccountData = ValidateAccountData(
        accountExists: validateAccountResponse.accountExists,
        accountMobileNumber: _accountMobileNumberTextFieldController.text,
        validateAccountResponse: validateAccountResponse,
        validateAccountWithMobileResponse: validateAccountWithMobileResponse);
    pushToVerifyAccountWidget(validateAccountData);
  }

  pushToVerifyAccountWidget(ValidateAccountData validateAccountData) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => VerifyAccountStatefulWidget(
                validateAccountData: validateAccountData)));
  }
}
