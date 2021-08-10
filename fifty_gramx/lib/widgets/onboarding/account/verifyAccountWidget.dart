import 'dart:io';

import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets//homeStatefulWidget.dart';
import 'package:fifty_gramx/widgets/onboarding/account/validateAccountWidget.dart';
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
  final TextEditingController _accountVerificationCodeTextFieldController =
  TextEditingController();

  @override
  void dispose() {
    _accountVerificationCodeTextFieldController.dispose();
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
              controller: _accountVerificationCodeTextFieldController,
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
    var deviceOs = AccountDeviceOS.ANDROID;
    if (Platform.isAndroid) {
      deviceOs = AccountDeviceOS.ANDROID;
    } else if (Platform.isIOS) {
      deviceOs = AccountDeviceOS.IOS;
    }


    print(AccountData().readAccountServicesAccessAuthDetails().toString());
    var accountDeviceDetails = AccountDeviceDetails()
      ..accountDeviceOs = deviceOs
      ..deviceToken = "adfiasdof31943029rfdsaf9023rfd9sfwdfsdfsa";

    if (widget.validateAccountData.accountExists) {
      var validateAccountResponse =
          widget.validateAccountData.validateAccountResponse;
      var verifyAccountResponse = await AccessAccountService.verifyAccount(
          validateAccountResponse.accountAccessAuthDetails,
          false,
          validateAccountResponse.verificationCodeTokenDetails,
          _accountVerificationCodeTextFieldController.text,
          accountDeviceDetails);
      if (verifyAccountResponse.verificationDone) {
        AccountData().saveAccountServicesAccessAuthDetails(verifyAccountResponse.accountServiceAccessAuthDetails);
        pushToHomeStatefulWidget();
      }
    }
  }

  pushToHomeStatefulWidget() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomeStatefulWidget()));
  }
}