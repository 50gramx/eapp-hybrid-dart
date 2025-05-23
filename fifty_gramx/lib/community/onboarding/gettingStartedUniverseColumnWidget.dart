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

import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/access_account.pbgrpc.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/create_account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/DateTimeField/DateOfBirthField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/dropDownButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/MobileNumberTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/NameTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/SecurePinTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/progress/progressContentListTile.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/neumorphic_snackbar.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/account/createAccountService.dart';
import 'package:fifty_gramx/services/notification/notifications_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GettingStartedUniverseColumnWidget extends StatefulWidget {
  const GettingStartedUniverseColumnWidget(
      {Key? key,
      required this.isSelectingCountry,
      required this.selectingUniverseHeadingKey,
      required this.completedSelectingUniverseCallback})
      : super(key: key);

  @override
  State<GettingStartedUniverseColumnWidget> createState() =>
      _GettingStartedUniverseColumnWidgetState();

  final bool isSelectingCountry;
  final GlobalKey selectingUniverseHeadingKey;
  final VoidCallback completedSelectingUniverseCallback;
}

class _GettingStartedUniverseColumnWidgetState
    extends State<GettingStartedUniverseColumnWidget> {
  List<bool> universeHorizontalNavPrimaryButtonDisabled = [];
  List<String> universeHorizontalNavPrimaryHeadingText = [];
  bool universePrimaryButtonActive = false;
  bool universeSecondaryButtonActive = false;
  int universeHorizontalNavIndex = 0;

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

  bool unfortunateSignUpEvent =
      false; // event when account doesn't exists and is trying to sign up via app
  bool webSignInEvent =
      false; // event when account exists and is trying to sign in via web

  String selectedCountry = 'INDIA';
  String selectedCountryCode = '+91';
  List<String> listCountries = <String>['INDIA'];
  List<String> listCountryCodes = <String>['+91'];

  bool isMobileNumberEntered = false;
  bool isEnteringMobileNumber = false;
  TextEditingController mobileNumberTextFieldController =
      TextEditingController();

  bool verificationFailedEvent = false;

  bool isAccountNameEntered = false;
  bool isEnteringAccountName = false;

  TextEditingController accountFirstNameTextFieldController =
      TextEditingController();
  TextEditingController accountLastNameTextFieldController =
      TextEditingController();
  late FocusNode accountLastNameTextFieldFocusNode;
  bool isAccountNameValidated = false;
  String accountGalaxyName = "John's Galaxy ";
  String accountInitialsName = "John";

  bool isAccountDOBEntered = false;
  bool isEnteringAccountDOB = false;
  final enteringAccountDOBHeadingKey = new GlobalKey();
  var dateOfBirth = DateTime.now();
  TextEditingController dateOfBirthTextFieldController =
      TextEditingController();
  bool isAccountDOBValidated = false;

  bool isAssistantNameEntered = false;
  bool isEnteringAssistantName = false;
  TextEditingController assistantNameTextFieldController =
      TextEditingController();
  bool isAssistantNameValidated = false;

  @override
  void initState() {
    // TODO: implement initState

    universeHorizontalNavPrimaryButtonDisabled = [
      false,
      true,
      true,
      true,
      true,
      true,
    ];

    universeHorizontalNavPrimaryHeadingText = [
      "Please select your country of residence ",
      "Please enter your mobile number",
      "Please enter the 4-digit code sent to your mobile number",
      "Please enter your first and last name",
      "Please enter your date of birth",
      "Please enter a nickname for your assistant",
    ];

    mobileNumberTextFieldController.addListener(() {
      if (mobileNumberTextFieldController.text.length == 10) {
        setState(() {
          universeHorizontalNavPrimaryButtonDisabled[1] = false;
          unfortunateSignUpEvent = false;
          webSignInEvent = false;
        });
        FocusScope.of(context).unfocus();
        // SystemChannels.textInput.invokeMethod('TextInput.hide');
      } else {
        setState(() {
          universeHorizontalNavPrimaryButtonDisabled[1] = true;
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
          universeHorizontalNavPrimaryButtonDisabled[2] = false;
        });
        FocusScope.of(context).unfocus();
      } else {
        setState(() {
          universeHorizontalNavPrimaryButtonDisabled[2] = true;
        });
      }
    });

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

    dateOfBirthTextFieldController.addListener(() {
      validateDateOfBirth();
    });

    assistantNameTextFieldController.addListener(() {
      validateAssistantName();
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    mobileNumberTextFieldController.dispose();
    verificationPinTextFieldController.dispose();

    accountFirstNameTextFieldController.dispose();
    accountLastNameTextFieldController.dispose();
    accountLastNameTextFieldFocusNode.dispose();

    dateOfBirthTextFieldController.dispose();
    assistantNameTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgressContentListTile(
            primaryButtonOnPressed: () => {universePrimaryButtonOnPressed()},
            secondaryButtonOnPressed: () =>
                {universeSecondaryButtonOnPressed()},
            isContentActive: widget.isSelectingCountry,
            contentWidget: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: RichText(
                    text: TextSpan(
                      text: universeHorizontalNavPrimaryHeadingText[
                          universeHorizontalNavIndex],
                      style: TextStyle(
                          color: AppColors.contentPrimary(context),
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          height: 1.14285714),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: universeHorizontalNavIndex == 0,
                child: Column(children: [
                  DropDownButton(
                    dropdownItems: listCountries,
                    onChange: (country) => {onChangedSelectedCountry(country)},
                  ),
                  FormInfoText(
                          "By continuing you agree to the terms and conditions of use.")
                      .build(context),
                ]),
              ),
              Visibility(
                visible: universeHorizontalNavIndex == 1,
                child: Column(children: [
                  MobileNumberTextField(
                    mobileNumberTextFieldController:
                        mobileNumberTextFieldController,
                    mobileNumberCountryCode: selectedCountryCode,
                    isMobileNumberValidated:
                        !universeHorizontalNavPrimaryButtonDisabled[1],
                  ).build(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                  ),
                ]),
              ),
              Visibility(
                visible: universeHorizontalNavIndex == 2,
                child: Column(children: [
                  SecurePinTextField(
                    isTextFieldValidated:
                        !universeHorizontalNavPrimaryButtonDisabled[2],
                    securePinTextFieldController:
                        verificationPinTextFieldController,
                  ).build(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                            text: "Sometimes it may take more than 10 minutes "
                                "for the SMS to get delivered.",
                            style: AppTextStyle.formInfoTextStyle(context),
                            children: [
                              TextSpan(
                                  text: (verificationFailedEvent
                                      ? "Did you enter the correct code?"
                                      : ""),
                                  style: TextStyle(
                                      color: AppColors.warning(context),
                                      fontSize: 12,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                      height: 1.14285714)),
                            ]),
                      ),
                    ),
                  ),
                ]),
              ),
              Visibility(
                visible: universeHorizontalNavIndex == 3,
                child: Column(children: [
                  NameTextField(
                          hintText: "First Name",
                          nameTextFieldController:
                              accountFirstNameTextFieldController)
                      .build(context),
                  NameTextField(
                    hintText: "Last Name",
                    nameTextFieldController: accountLastNameTextFieldController,
                  ).build(context),
                  FormInfoText("By continuing you may need to verify your name"
                          " with a valid identity proof.")
                      .build(context),
                ]),
              ),
              Visibility(
                visible: universeHorizontalNavIndex == 4,
                child: Column(children: [
                  DateOfBirthField(
                          dateOfBirthTextFieldController:
                              dateOfBirthTextFieldController)
                      .build(context),
                  FormInfoText(
                          "By continuing you may need to verify your date of birth"
                          " with a valid identity proof.")
                      .build(context),
                ]),
              ),
              Visibility(
                visible: universeHorizontalNavIndex == 5,
                child: Column(children: [
                  NameTextField(
                    hintText: "Nickname",
                    nameTextFieldController: assistantNameTextFieldController,
                  ).build(context),
                  FormInfoText("By continuing your assistant can be "
                          "discovered by name or your mobile number in your country.")
                      .build(context),
                ]),
              ),
              Row(children: [
                Container(
                  padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: AnimatedSmoothIndicator(
                    activeIndex: universeHorizontalNavIndex,
                    count: universeHorizontalNavPrimaryHeadingText.length,
                    effect: ScrollingDotsEffect(
                      radius: 12,
                      dotHeight: 5,
                      dotWidth: 5,
                      activeDotColor: AppColors.contentSecondary(context),
                      dotColor: AppColors.contentTertiary(context),
                    ),
                  ),
                ),
              ])
            ]),
            isSecondaryButtonActive: universeSecondaryButtonActive,
            isPrimaryButtonDisabled: universeHorizontalNavPrimaryButtonDisabled[
                universeHorizontalNavIndex],
            contentActionButtonTitle: "Continue"),
      ],
    );
  }

  // Universe Primary & Secondary Button Active/Inactive

  activeUniversePrimaryButton() {
    setState(() {
      universePrimaryButtonActive = true;
    });
  }

  inactiveUniversePrimaryButton() {
    setState(() {
      universePrimaryButtonActive = false;
    });
  }

  activeUniverseSecondaryButton() {
    setState(() {
      universeSecondaryButtonActive = true;
    });
  }

  inactiveUniverseSecondaryButton() {
    setState(() {
      universeSecondaryButtonActive = false;
    });
  }

  // Universe : Horizontal Nav
  increaseUniverseHorizontalNav() {
    print("increaseUniverseHorizontalNav: $universeHorizontalNavIndex");
    setState(() {
      universeHorizontalNavIndex += 1;
    });
    Scrollable.ensureVisible(
        widget.selectingUniverseHeadingKey.currentContext!);
  }

  decreaseUniverseHorizontalNav() {
    setState(() {
      universeHorizontalNavIndex -= 1;
    });
    Scrollable.ensureVisible(
        widget.selectingUniverseHeadingKey.currentContext!);
  }

  // Universe : Primary and Secondary Button On Pressed

  universeSecondaryButtonOnPressed() {
    if (universeHorizontalNavIndex == 1) {
      decreaseUniverseHorizontalNav();
      inactiveUniverseSecondaryButton();
    } else if (universeHorizontalNavIndex == 2) {
      decreaseUniverseHorizontalNav();
    } else if (universeHorizontalNavIndex == 3) {
    } else if (universeHorizontalNavIndex == 4) {
      decreaseUniverseHorizontalNav();
      inactiveUniverseSecondaryButton();
    } else if (universeHorizontalNavIndex == 5) {
      decreaseUniverseHorizontalNav();
    }
  }

  universePrimaryButtonOnPressed() async {
    if (universeHorizontalNavIndex == 0) {
      increaseUniverseHorizontalNav();
      activeUniverseSecondaryButton();
    } else if (universeHorizontalNavIndex == 1) {
      if (!universeHorizontalNavPrimaryButtonDisabled[1]) {
        setState(() {
          universeHorizontalNavPrimaryButtonDisabled[1] = true;
        });
        await validateAccount();
        if (validateAccountResponse.accountExists) {
          // if (kIsWeb) {
          //   setState(() {
          //     webSignInEvent = true;
          //     universeHorizontalNavPrimaryButtonDisabled[1] = true;
          //   });
          // } else {
          //   increaseUniverseHorizontalNav();
          // }
          increaseUniverseHorizontalNav();
        } else {
          print("account doesn't exists");
          if (kIsWeb) {
            await validateAccountWithMobile();
            if (validateAccountWithMobileResponse
                .validateAccountWithMobileDone) {
              increaseUniverseHorizontalNav();
            }
          } else {
            print("platform is not web");
            await validateAccountWithMobile();
            if (validateAccountWithMobileResponse
                .validateAccountWithMobileDone) {
              increaseUniverseHorizontalNav();
            }
            // TODO: Uncomment to disable sign up via apps
            // setState(() {
            //   universeHorizontalNavPrimaryButtonDisabled[1] = true;
            //   unfortunateSignUpEvent = true;
            // });
          }
          universeHorizontalNavPrimaryHeadingText[2] =
              "Please enter the 4-digit code sent to "
              "you at ${mobileNumberTextFieldController.text == "" ? "your mobile number." : "${mobileNumberTextFieldController.text}."}";
        }
      }
    } else if (universeHorizontalNavIndex == 2) {
      if (!universeHorizontalNavPrimaryButtonDisabled[2]) {
        if (validateAccountResponse.accountExists) {
          await verifyAccount();
          if (verifyAccountResponse.verificationDone) {
            saveAccessAuth(
                verifyAccountResponse.accountServiceAccessAuthDetails);
            showNeumorphicSnackBar(
                context, verifyAccountResponse.verificationMessage);

            LocalServices().contacts();
            if ((await AccountData().readAccount()).accountBillingActive) {
              // checking if the billing is not active
              // todo: load local services here
              print("will pushToHomeScreenWidget");
              // pushToHomeScreenWidget();
              print("will set state");
              setState(() {});
              print("done set state");
              widget.completedSelectingUniverseCallback();
            } else {
              // pushing the account to complete tier selection
              widget.completedSelectingUniverseCallback();
            }
          } else {
            setState(() {
              verificationFailedEvent = true;
            });
          }
        } else {
          await verificationAccount();
          if (verificationAccountResponse.verificationDone) {
            increaseUniverseHorizontalNav();
            inactiveUniverseSecondaryButton();
          } else {
            setState(() {
              verificationFailedEvent = true;
            });
          }
        }
      }
    } else if (universeHorizontalNavIndex == 3) {
      if (!universeHorizontalNavPrimaryButtonDisabled[3]) {
        increaseUniverseHorizontalNav();
        activeUniverseSecondaryButton();
      }
    } else if (universeHorizontalNavIndex == 4) {
      if (!universeHorizontalNavPrimaryButtonDisabled[4]) {
        increaseUniverseHorizontalNav();
      }
    } else if (universeHorizontalNavIndex == 5) {
      print("will wait for capture");
      var captureAccountMetaDetailsResponse = await captureAccountMetaDetails();
      print("captured: ${captureAccountMetaDetailsResponse}");
      if (captureAccountMetaDetailsResponse.accountCreationDone) {
        print("created account");
        saveAccessAuth(
            captureAccountMetaDetailsResponse.accountServiceAccessAuthDetails);
        print("saved access auth");
        showNeumorphicSnackBar(
            context, captureAccountMetaDetailsResponse.accountCreationMessage);

        // start update billing
        print("will update billing");
        await AccountData().saveIsAccountBillingActive(true);
        // end  update billing
        LocalServices().contacts();
        // widget.completedSelectingUniverseCallback();
      } else {
        showNeumorphicSnackBar(
            context, captureAccountMetaDetailsResponse.accountCreationMessage);
      }
      print("will push");
      widget.completedSelectingUniverseCallback();
      // pushToHomeScreenWidget();
      // setState(() {});
    }
  }

  // Universe Helper functions
  validateAccount() async {
    print("validateAccount");
    validateAccountResponse = await AccessAccountService.validateAccount(
        selectedCountryCode, mobileNumberTextFieldController.text);
    print("validateAccount.validateAccountResponse: $validateAccountResponse");
  }

  validateAccountWithMobile() async {
    print("validateAccountWithMobile");
    validateAccountWithMobileResponse =
        await CreateAccountService.validateAccountWithMobile(
            selectedCountryCode, mobileNumberTextFieldController.text);
    print("validateAccountWithMobile: $validateAccountWithMobileResponse");
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

  Future<CaptureAccountMetaDetailsResponse> captureAccountMetaDetails() async {
    return await CreateAccountService.captureAccountMetaDetails(
        validateAccountWithMobileResponse.accountCreationAuthDetails,
        accountFirstNameTextFieldController.text.trim(),
        accountLastNameTextFieldController.text.trim(),
        Timestamp.fromDateTime(dateOfBirth),
        AccountGender.UNKNOWN,
        await PushNotificationService.instance.getAccountDeviceDetails(),
        assistantNameTextFieldController.text.trim());
  }

  saveAccessAuth(
      AccountServicesAccessAuthDetails accountServicesAccessAuthDetails) {
    AccountData()
        .saveAccountServicesAccessAuthDetails(accountServicesAccessAuthDetails);
  }

  onChangedSelectedCountry(String country) {
    setState(() {
      selectedCountry = country;
      selectedCountryCode = listCountryCodes[listCountries.indexOf(country)];
    });
  }

  validateAssistantName() {
    if (assistantNameTextFieldController.text.trim().length < 3) {
      setState(() {
        universeHorizontalNavPrimaryButtonDisabled[5] = true;
      });
    } else {
      setState(() {
        universeHorizontalNavPrimaryButtonDisabled[5] = false;
      });
    }
  }

  validateAccountName() {
    if (accountFirstNameTextFieldController.text.trim().length < 3 ||
        accountLastNameTextFieldController.text.trim().length < 3) {
      setState(() {
        universeHorizontalNavPrimaryButtonDisabled[3] = true;
      });
    } else {
      setState(() {
        universeHorizontalNavPrimaryButtonDisabled[3] = false;
        accountInitialsName =
            "${accountFirstNameTextFieldController.text.trim()}";
      });
    }
  }

  validateDateOfBirth() {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    dateOfBirth = dateFormat.parse(dateOfBirthTextFieldController.text);
    DateTime today = DateTime.now();

    int yearDiff = today.year - dateOfBirth.year;
    int monthDiff = today.month - dateOfBirth.month;
    int dayDiff = today.day - dateOfBirth.day;

    if (yearDiff > 18 || yearDiff == 18 && monthDiff >= 0 && dayDiff >= 0) {
      setState(() {
        universeHorizontalNavPrimaryButtonDisabled[4] = false;
      });
    } else {
      setState(() {
        universeHorizontalNavPrimaryButtonDisabled[4] = true;
      });
    }
  }

  pushToHomeScreenWidget() async {
    print("pushToHomeScreenWidget");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
    // await LocalServices().loadLocalServices();
  }
}
