import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/account/createAccountService.dart';
import 'package:fifty_gramx/services/notification/notifications_service.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/dropDownButton.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/TextField/MobileNumberTextField.dart';
import 'package:fifty_gramx/widgets/components/TextField/SecurePinTextField.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// This is the stateful widget that the main application instantiates.
class AccountMobileNumberEditorPage extends StatefulWidget {
  const AccountMobileNumberEditorPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountMobileNumberEditorPage> createState() =>
      _AccountMobileNumberEditorPageState();
}

class _AccountMobileNumberEditorPageState
    extends State<AccountMobileNumberEditorPage> {
  // allows to show a list of countries
  // TODO: Get this from an Ethos Core Services API
  String selectedCountry = 'INDIA';
  String selectedCountryCode = '+91';
  List<String> listCountries = <String>['INDIA'];
  List<String> listCountryCodes = <String>['+91'];

  // Universe Widget Properties
  TextEditingController verificationPinTextFieldController =
      TextEditingController();

  // Universe Data Properties
  ValidateAccountResponse validateAccountResponse =
      ValidateAccountResponse.getDefault();
  ValidateAccountWithMobileResponse validateAccountWithMobileResponse =
      ValidateAccountWithMobileResponse.getDefault();

  VerifyAccountResponse verifyAccountResponse =
      VerifyAccountResponse.getDefault();
  VerificationAccountResponse verificationAccountResponse =
      VerificationAccountResponse.getDefault();

  // event when the mobile number verification fails
  bool verificationFailedEvent = false;

  // event when account doesn't exists and is trying to sign up via app
  bool unfortunateSignUpEvent = false;

  // event when account exists and is trying to sign in via web
  bool webSignInEvent = false;

  bool isMobileNumberEntered = false;
  bool isEnteringMobileNumber = false;

  // allows to toggle progress indicator
  bool isSavingAccountDOB = false;

  // allows to toggle the save button
  bool isSaveButtonEnabled = false;

  // allows to handle DOB validation
  bool isAccountMobileNumberValidated = false;
  bool isAccountMobileNumberSecureTextValidated = false;

  // allows to save the current time
  var dateOfBirth = DateTime.now();

  // allows to edit mobile number text field
  TextEditingController mobileNumberTextFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "Contact",
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
                  text: "Please enter your mobile number",
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
              child: DropDownButton(
                dropdownItems: listCountries,
                onChange: (country) => {onChangedSelectedCountry(country)},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
              child: MobileNumberTextField(
                mobileNumberTextFieldController:
                    mobileNumberTextFieldController,
                mobileNumberCountryCode: selectedCountryCode,
                isMobileNumberValidated: isAccountMobileNumberValidated,
              ).build(context),
            ),
            Visibility(
              visible: true,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
                child: SecurePinTextField(
                  isTextFieldValidated:
                      isAccountMobileNumberSecureTextValidated,
                  securePinTextFieldController:
                      verificationPinTextFieldController,
                ).build(context),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 16, left: 16),
              child: RichText(
                text: TextSpan(
                    text:
                        "By continuing you may receive an SMS for verification. Message and data rates may apply. ",
                    style: AppTextStyle.formInfoTextStyle(context),
                    children: [
                      TextSpan(
                          text: (unfortunateSignUpEvent
                              ? " Are you trying to join 50GRAMX? Unfortunately, "
                                  "you cannot launch Galaxy or create Space in-app."
                              : ""),
                          style: TextStyle(
                              color: AppColors.warning(context),
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.14285714)),
                      TextSpan(
                          text: (webSignInEvent
                              ? " It looks like everything up and running."
                                  " Please access your Space via our Android/iOS Apps."
                              : ""),
                          style: TextStyle(
                              color: AppColors.blue(context),
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.14285714)),
                    ]),
              ),
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
                    buttonTitle: "Continue",
                    isPrimaryButton: true,
                    isPrimaryButtonDisabled: !isSaveButtonEnabled,
                    buttonActionOnPressed: () {
//                      saveAccountDOB();
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
    mobileNumberTextFieldController.addListener(() {
      if (mobileNumberTextFieldController.text.length == 10) {
        setState(() {
          isAccountMobileNumberValidated = true;
          unfortunateSignUpEvent = false;
          webSignInEvent = false;
        });
        FocusScope.of(context).unfocus();
        // SystemChannels.textInput.invokeMethod('TextInput.hide');
      } else {
        setState(() {
          isAccountMobileNumberValidated = false;
        });
      }
    });

    verificationPinTextFieldController.addListener(() {
      if (!verificationFailedEvent) {
        setState(() {
          verificationFailedEvent = false;
        });
      }
      if (verificationPinTextFieldController.text.length == 4) {
        setState(() {
          isAccountMobileNumberSecureTextValidated = true;
        });
        FocusScope.of(context).unfocus();
      } else {
        setState(() {
          isAccountMobileNumberSecureTextValidated = false;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    mobileNumberTextFieldController.dispose();
    verificationPinTextFieldController.dispose();
    super.dispose();
  }

//  saveAccountMobileNumber() async {
//    await validateAccount();
//    if (validateAccountResponse.accountExists) {
//      if (kIsWeb) {
//        setState(() {
//          webSignInEvent = true;
//          universeHorizontalNavPrimaryButtonDisabled[1] = true;
//        });
//      } else {
//        increaseUniverseHorizontalNav();
//      }
//    } else {
//      if (kIsWeb) {
//        await validateAccountWithMobile();
//        increaseUniverseHorizontalNav();
//      } else {
//        await validateAccountWithMobile();
//        increaseUniverseHorizontalNav();
//        // TODO: Uncomment to disable sign up via apps
//        // setState(() {
//        //   universeHorizontalNavPrimaryButtonDisabled[1] = true;
//        //   unfortunateSignUpEvent = true;
//        // });
//      }
//      universeHorizontalNavPrimaryHeadingText[2] =
//          "Please enter the 4-digit code sent to "
//          "you at ${mobileNumberTextFieldController.text == "" ? "your mobile number." : "${mobileNumberTextFieldController.text}."}";
//    }
//  }

  // Universe Helper functions
  validateAccount() async {
    validateAccountResponse = await AccessAccountService.validateAccount(
        selectedCountryCode, mobileNumberTextFieldController.text);
  }

  validateAccountWithMobile() async {
    validateAccountWithMobileResponse =
        await CreateAccountService.validateAccountWithMobile(
            selectedCountryCode, mobileNumberTextFieldController.text);
  }

  verifyAccount() async {
    verifyAccountResponse = await AccessAccountService.verifyAccount(
        validateAccountResponse.accountAccessAuthDetails,
        false,
        validateAccountResponse.verificationCodeTokenDetails,
        verificationPinTextFieldController.text,
        await PushNotificationService.instance.getAccountDeviceDetails());
  }

  verificationAccount() async {
    verificationAccountResponse =
        await CreateAccountService.verificationAccount(
            validateAccountWithMobileResponse.accountCreationAuthDetails,
            false,
            verificationPinTextFieldController.text,
            validateAccountWithMobileResponse.verificationCodeTokenDetails);
  }

  // function to change the selected country
  onChangedSelectedCountry(String country) {
    setState(() {
      selectedCountry = country;
      selectedCountryCode = listCountryCodes[listCountries.indexOf(country)];
    });
  }
}
