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

import 'dart:async';
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/galaxy.pb.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/payments/ethosCoinPayments.dart';
import 'package:fifty_gramx/services/payments/spaceTierPayments.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/progress/progressContentListTile.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/community/onboardingWidgets/tierSelectionWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
//import for SkuDetailsWrapper
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
//import for GooglePlayProductDetails
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

class GettingStartedGalaxyColumnWidget extends StatefulWidget {
  const GettingStartedGalaxyColumnWidget(
      {Key? key,
      required this.isSelectingGalaxy,
      required this.selectingGalaxyHeadingKey})
      : super(key: key);

  @override
  State<GettingStartedGalaxyColumnWidget> createState() =>
      _GettingStartedGalaxyColumnWidgetState();

  final bool isSelectingGalaxy;
  final GlobalKey selectingGalaxyHeadingKey;
}

class _GettingStartedGalaxyColumnWidgetState
    extends State<GettingStartedGalaxyColumnWidget> {
  // Galaxy : Data Attributes
  int galaxyHorizontalNavIndex = 0;
  bool galaxyPrimaryButtonActive = false;
  bool galaxySecondaryButtonActive = false;

  int identityMetaCount = 1;
  int conversationsMetaCount = 1;
  int knowledgeDomainsMetaCount = 1;

  List<bool> galaxyHorizontalNavPrimaryButtonDisabled = [
    false,
  ];

  List<List<String>> galaxyHorizontalNavPrimaryHeadingText = [
    [
      "Choose tier that's right for you",
    ]
  ];

  // ["Enjoy the no limit, always free benefits",]

  List<String> galaxyHorizontalNavInfoText = [
    "Only pay for what you use after tier limits with EthosCoin",
  ];

  List<String> galaxyPrimaryButtonTitleTexts = [
    "Confirm",
  ]; // warn: incomplete

  List<String> galaxySecondaryButtonTitleTexts = [""];

  List<String> androidTierProductIds = [];
  Account accountDetails = Account(accountFirstName: "John");

  ProductDetails selectedTierDetails = ProductDetails(
      id: "",
      title: "",
      rawPrice: 0.0,
      price: "",
      description: "",
      currencyCode: "");
  ProductDetails selectedCoinBalance = ProductDetails(
      id: "",
      title: "",
      rawPrice: 0.0,
      price: "",
      description: "",
      currencyCode: "");
  double addedEthosCoin = 0.10;
  double ethosCoinCurrencyPrice = 3600;

  String firstKnowledgeDomainName = "First Domain";

  getAccountDetails() async {
    Account account = await AccountData().readAccount();
    setState(() {
      accountDetails = account;
    });
  }

  final Set<String> _kIds = <String>{
    '50gramx.subscribe.tier.free',
    '50gramx.add.ethoscoin.100'
  };

  List<ProductDetails> products = [];
  bool tierSubscribed = false;

  listAllProducts() async {
    final ProductDetailsResponse response =
        await InAppPurchase.instance.queryProductDetails(_kIds);
    if (response.notFoundIDs.isNotEmpty) {
      // Handle the error.
    }
    products = response.productDetails;

    var purchaseParam =
        SpaceTierPayments().getTierGooglePlayPurchaseParams(products[1]);

    InAppPurchase.instance.buyNonConsumable(purchaseParam: purchaseParam);
  }

  late StreamSubscription<List<PurchaseDetails>> _subscription;

  _showPendingUI() {}

  _handleError(e) {}

  _deliverProduct(purchaseDetails) {
    // if (!tierSubscribed) {
    //   setState(() {
    //     tierSubscribed = true;
    //   });
    //   increaseGalaxyHorizontalNav();
    //   // activeGalaxySecondaryButton();
    // }
  }

  _verifyPurchase(PurchaseDetails purchaseDetails) async {
    OpenGalaxyTierEnum openGalaxyTierEnum = OpenGalaxyTierEnum.BASIC_TIER;
    if (selectedTierDetails.id == "50gramx.space.tier.basic") {
      openGalaxyTierEnum = OpenGalaxyTierEnum.BASIC_TIER;
    } else if (selectedTierDetails.id == "50gramx.space.tier.standard") {
      openGalaxyTierEnum = OpenGalaxyTierEnum.STANDARD_TIER;
    } else if (selectedTierDetails.id == "50gramx.space.tier.professional") {
      openGalaxyTierEnum = OpenGalaxyTierEnum.PROFESSIONAL_TIER;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content:
                Text("Unknown Tier Purchased. This action will be reported.")),
      );
      return false;
    }
    if (!tierSubscribed) {
      setState(() {
        tierSubscribed = true;
      });
      var confirmResponse = await PayInAccountService
          .confirmAccountOpenGalaxyPlayStoreSubscription(
              purchaseDetails.verificationData.serverVerificationData,
              openGalaxyTierEnum);
      if (confirmResponse.metaDone) {
        await AccountData().saveIsAccountBillingActive(true);
        return true;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(confirmResponse.metaMessage)),
        );
        return false;
      }
    }
  }

  _handleInvalidPurchase(purchaseDetails) {}

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        _showPendingUI();
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          _handleError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
            purchaseDetails.status == PurchaseStatus.restored) {
          bool valid = await _verifyPurchase(purchaseDetails);
          if (valid) {
            _deliverProduct(purchaseDetails);
          } else {
            _handleInvalidPurchase(purchaseDetails);
          }
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await InAppPurchase.instance.completePurchase(purchaseDetails);
          pushToHomeScreenWidget();
        }
      }
    });
  }

  checkBillingActive() async {
    if (await AccountData().readIsAccountBillingActive()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Taking you home...")),
      );
      pushToHomeScreenWidget();
    } else {
      setState(() {
        galaxyHorizontalNavPrimaryButtonDisabled[0] = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                "Private Internet. No Adverts. Choose the tier that's right for you.")),
      );
    }
  }

  @override
  initState() {
    // TODO: implement initState

    setState(() {
      galaxyHorizontalNavPrimaryButtonDisabled[0] = false;
    });
    checkBillingActive();

    if (Platform.isAndroid) {
      final Stream<List<PurchaseDetails>> purchaseUpdated =
          InAppPurchase.instance.purchaseStream;

      _subscription = purchaseUpdated.listen((purchaseDetailsList) {
        _listenToPurchaseUpdated(purchaseDetailsList);
      }, onDone: () {
        _subscription.cancel();
      }, onError: (error) {
        // handle error here.
      });
    }

    getAccountDetails();
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressContentListTile(
      primaryButtonOnPressed: () => {galaxyPrimaryButtonOnPressed()},
      secondaryButtonOnPressed: () => {galaxySecondaryButtonOnPressed()},
      isContentActive: widget.isSelectingGalaxy,
      contentWidget:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: RichText(
              text: TextSpan(
                text: galaxyHorizontalNavPrimaryHeadingText[
                    galaxyHorizontalNavIndex][0],
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
          visible: galaxyHorizontalNavIndex == 0,
          child: TierSelectionWidget(
              updateSelectedTier: (value) => updateSelectedTier(value)),
        ),
        FormInfoText(galaxyHorizontalNavInfoText[galaxyHorizontalNavIndex])
            .build(context),
      ]),
      isSecondaryButtonActive: galaxySecondaryButtonActive,
      secondaryButtonTitle:
          galaxySecondaryButtonTitleTexts[galaxyHorizontalNavIndex],
      isPrimaryButtonDisabled:
          galaxyHorizontalNavPrimaryButtonDisabled[galaxyHorizontalNavIndex],
      contentActionButtonTitle:
          galaxyPrimaryButtonTitleTexts[galaxyHorizontalNavIndex],
      isLastMostTile: true,
    );
  }

  // EthosCoin Buttons
  plusEthosCoin() {
    if (addedEthosCoin <= 51) {
      setState(() {
        addedEthosCoin = addedEthosCoin * 2;
      });
    }
  }

  minusEthosCoin() {
    if (addedEthosCoin > 0.1) {
      setState(() {
        addedEthosCoin = addedEthosCoin / 2;
      });
    }
  }

  // Universe Primary & Secondary Button Active/Inactive

  activeGalaxyPrimaryButton() {
    setState(() {
      galaxyPrimaryButtonActive = true;
    });
  }

  inactiveGalaxyPrimaryButton() {
    setState(() {
      galaxyPrimaryButtonActive = false;
    });
  }

  activeGalaxySecondaryButton() {
    setState(() {
      galaxySecondaryButtonActive = true;
    });
  }

  inactiveGalaxySecondaryButton() {
    setState(() {
      galaxySecondaryButtonActive = false;
    });
  }

  // Galaxy : Horizontal Nav
  increaseGalaxyHorizontalNav() {
    setState(() {
      galaxyHorizontalNavIndex += 1;
    });
    Scrollable.ensureVisible(widget.selectingGalaxyHeadingKey.currentContext!);
  }

  decreaseGalaxyHorizontalNav() {
    setState(() {
      galaxyHorizontalNavIndex -= 1;
    });
    Scrollable.ensureVisible(widget.selectingGalaxyHeadingKey.currentContext!);
  }

  // Galaxy : Primary and Secondary Button on Pressed
  galaxyPrimaryButtonOnPressed() async {
    if (galaxyHorizontalNavIndex == 0) {
      if (galaxyHorizontalNavPrimaryButtonDisabled[galaxyHorizontalNavIndex] ==
          false) {
        setState(() {
          identityMetaCount = 1;
          conversationsMetaCount = 1;
          knowledgeDomainsMetaCount = 1;
        });
        if (selectedTierDetails.id == "50gramx.space.tier.starter") {
          if (!tierSubscribed) {
            setState(() {
              tierSubscribed = true;
            });
            var confirmResponse = await PayInAccountService
                .confirmAccountOpenGalaxyPlayStoreSubscription(
                    "", OpenGalaxyTierEnum.FREE_TIER);
            if (confirmResponse.metaDone) {
              await AccountData().saveIsAccountBillingActive(true);
              pushToHomeScreenWidget();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(confirmResponse.metaMessage)),
              );
            }
          }
        } else {
          // var purchaseParam = SpaceTierPayments()
          //     .getTierGooglePlayPurchaseParams(selectedTierDetails);
          var purchaseParam = EthosCoinPayments()
              .getEthosCoinPurchaseParam(selectedTierDetails);
          await InAppPurchase.instance.buyNonConsumable(
            purchaseParam: purchaseParam,
          );
        }
      }
    } else if (galaxyHorizontalNavIndex == 1) {
      var purchaseParam =
          EthosCoinPayments().getEthosCoinPurchaseParam(selectedCoinBalance);
      await InAppPurchase.instance.buyConsumable(purchaseParam: purchaseParam);
      // increaseGalaxyHorizontalNav();
    } else if (galaxyHorizontalNavIndex == 2) {
      increaseGalaxyHorizontalNav();
    } else if (galaxyHorizontalNavIndex == 3) {
      startPayment();
      // increaseGalaxyHorizontalNav();
    } else if (galaxyHorizontalNavIndex == 4) {
      increaseGalaxyHorizontalNav();
    }
  }

  galaxySecondaryButtonOnPressed() {
    if (galaxyHorizontalNavIndex == 1) {
      // decreaseGalaxyHorizontalNav();
      // inactiveGalaxySecondaryButton();
    } else if (galaxyHorizontalNavIndex == 2) {
      decreaseGalaxyHorizontalNav();
    } else if (galaxyHorizontalNavIndex == 3) {
      // todo: will add EthosCoin modal here
      // decreaseGalaxyHorizontalNav();
    } else if (galaxyHorizontalNavIndex == 4) {
      decreaseGalaxyHorizontalNav();
    }
  }

  updateSelectedTier(ProductDetails tierDetails) {
    // SkuDetailsWrapper skuDetails =
    //     (tierDetails as GooglePlayProductDetails).productDetails;
    setState(() {
      selectedTierDetails = tierDetails;
    });
  }

  updateSelectedCoinBalance(ProductDetails coinBalance) {
    setState(() {
      selectedCoinBalance = coinBalance;
    });
  }

  startPayment() async {
    var clientSecret =
        "pi_1J8FqbF89FbkqSMdnZGb1aj8_secret_2ZwrLG0H1AZFDP9XctxAr01Nl";
    try {
      // await Stripe.instance.initPaymentSheet(
      //     paymentSheetParameters: SetupPaymentSheetParameters(
      //   paymentIntentClientSecret: clientSecret,
      //   style: ThemeMode.dark,
      //   googlePay: true,
      //   applePay: true,
      //   merchantCountryCode: "IN",
      //   merchantDisplayName: "50GRAMX",
      // ));
      setState(() {});
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }

    displayPaymentSheet();
  }

  Future<void> displayPaymentSheet() async {
    var clientSecret =
        "pi_1J8FqbF89FbkqSMdnZGb1aj8_secret_2ZwrLG0H1AZFDP9XctxAr01Nl";
    try {
      // await Stripe.instance.presentPaymentSheet(
      //     parameters: PresentPaymentSheetParameters(
      //         clientSecret: clientSecret, confirmPayment: true));
      setState(() {});
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  pushToHomeScreenWidget() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
    await LocalServices().load();
  }
}
