import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/account/createAccountService.dart';
import 'package:fifty_gramx/views/onboarding/account/verifyAccountWidget.dart';
import 'package:flutter/material.dart';

_validateMobileNumberLength() {}

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
                labelText: '0912345678',
              ),
              onChanged: _validateMobileNumberLength()),
          ElevatedButton(
            child: Text("Continue"),
            onPressed: () => onValidateAccountButtonPress(),
          )
        ],
      ),
    );
  }

  onValidateAccountButtonPress() async {
    // CreateAccountService.validateAccountWithMobile(accountMobileNumber)
    var validateAccountResponse = await AccessAccountService.validateAccount(
        _accountMobileNumberTextFieldController.text);

    var validateAccountWithMobileResponse =
        ValidateAccountWithMobileResponse.getDefault();
    if (validateAccountResponse.accountExists == false) {
      validateAccountWithMobileResponse =
          await CreateAccountService.validateAccountWithMobile(
              _accountMobileNumberTextFieldController.text);
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
