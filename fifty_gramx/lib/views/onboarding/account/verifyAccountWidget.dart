import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/account/createAccountService.dart';
import 'package:fifty_gramx/views/onboarding/account/validateAccountWidget.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class VerifyAccountStatefulWidget extends StatefulWidget {
  final ValidateAccountData validateAccountData;

  const VerifyAccountStatefulWidget(
      {Key? key, required this.validateAccountData})
      : super(key: key);

  @override
  State<VerifyAccountStatefulWidget> createState() =>
      _VerifyAccountStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _VerifyAccountStatefulWidgetState
    extends State<VerifyAccountStatefulWidget> {
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
        title: Text("Please enter the 4-digit code sent to you at " +
            widget.validateAccountData.accountMobileNumber),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
              controller: _accountMobileNumberTextFieldController,
              keyboardType: TextInputType.number,
              maxLength: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'XXXX',
              )),
          ElevatedButton(
            child: Text("Continue"),
            onPressed: () => onVerifyAccountButtonPress(),
          )
        ],
      ),
    );
  }

  onVerifyAccountButtonPress() async {
    // CreateAccountService.validateAccountWithMobile(accountMobileNumber)
    var validateAccountResponse = await AccessAccountService.validateAccount(
        _accountMobileNumberTextFieldController.text);

    if (validateAccountResponse.accountExists) {}
  }
}
