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

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/pay_in_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/payInAccountService.dart';
import 'package:fifty_gramx/services/payments/ethosCoinPayments.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuIconButton.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/onboardingWidgets/ethosCoinBalanceCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class AddEthosCoinWidget extends StatefulWidget {
  const AddEthosCoinWidget(
      {Key? key,
      this.ethosCoinBalance = 0.0,
      required this.updateSelectedCoinBalance})
      : super(key: key);

  final double ethosCoinBalance;
  final Function(ProductDetails) updateSelectedCoinBalance;

  @override
  State<AddEthosCoinWidget> createState() => _AddEthosCoinWidgetState();
}

class _AddEthosCoinWidgetState extends State<AddEthosCoinWidget> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  List<ProductDetails> _coinDetails = [];
  ProductDetails _selectedCoinBalance = ProductDetails(
      currencyCode: "",
      description: "",
      id: "",
      price: "0",
      rawPrice: 0.00,
      title: "");
  int _selectedCoinBalanceIndex = 0;

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
    AddEthosCoinEnum addEthosCoinEnum = AddEthosCoinEnum.ADD_100_ETHOSCOIN;
    if (purchaseDetails.productID == "50gramx.add.ethoscoin.100") {
      addEthosCoinEnum = AddEthosCoinEnum.ADD_100_ETHOSCOIN;
    } else if (purchaseDetails.productID == "50gramx.add.ethoscoin.200") {
      addEthosCoinEnum = AddEthosCoinEnum.ADD_200_ETHOSCOIN;
    } else if (purchaseDetails.productID == "50gramx.add.ethoscoin.400") {
      addEthosCoinEnum = AddEthosCoinEnum.ADD_400_ETHOSCOIN;
    } else if (purchaseDetails.productID == "50gramx.add.ethoscoin.800") {
      addEthosCoinEnum = AddEthosCoinEnum.ADD_800_ETHOSCOIN;
    } else if (purchaseDetails.productID == "50gramx.add.ethoscoin.1600") {
      addEthosCoinEnum = AddEthosCoinEnum.ADD_1600_ETHOSCOIN;
    } else if (purchaseDetails.productID == "50gramx.add.ethoscoin.3200") {
      addEthosCoinEnum = AddEthosCoinEnum.ADD_3200_ETHOSCOIN;
    } else if (purchaseDetails.productID == "50gramx.add.ethoscoin.6400") {
      addEthosCoinEnum = AddEthosCoinEnum.ADD_6400_ETHOSCOIN;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                "Unknown EthosCoin Balance Purchased. This action will be reported.")),
      );
      return false;
    }
    var confirmResponse =
        await PayInAccountService.confirmAccountEthosCoinBalanceAddition(
            purchaseDetails.verificationData.serverVerificationData,
            addEthosCoinEnum);
    if (confirmResponse.metaDone) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(confirmResponse.metaMessage)),
      );
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(confirmResponse.metaMessage)),
      );
      return false;
    }
  }

  _handleInvalidPurchase(purchaseDetails) {}

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    print("AddEthosCoinWidget:_listenToPurchaseUpdated");
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
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    "Successfully added EthosCoin. Please visit this page again to reflect the updated balance.")),
          );
        }
      }
    });
  }

  @override
  void initState() {
    print("AddEthosCoinWidget:initState");
    final Stream<List<PurchaseDetails>> purchaseUpdated =
        InAppPurchase.instance.purchaseStream;

    _subscription = purchaseUpdated.listen((purchaseDetailsList) {
      print("AddEthosCoinWidget:purchaseUpdated.listen");
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      print("AddEthosCoinWidget:purchaseUpdated.onDone");
      _subscription.cancel();
    }, onError: (error) {
      print("AddEthosCoinWidget:purchaseUpdated.onError");
      // handle error here.
    });

    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<AccountEthosCoinBalanceResponse>(
            future: PayInAccountService.accountEthosCoinBalance(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                print("xx");
                return AppProgressIndeterminateWidget();
              } else {
                if (snapshot.data!.responseMeta.metaDone == false) {
                  print("ff");
                  var newBalance = "0.00";
                  return EthosCoinBalanceCard(
                    addingXEthosCoin: newBalance,
                    ethosCoinPrice: _selectedCoinBalance.price,
                  );
                } else {
                  print("zz");
                  var newBalance = ((snapshot.data!.balance) +
                              _selectedCoinBalance.title.length >
                          0
                      ? int.parse(_selectedCoinBalance.title
                          .substring(0, _selectedCoinBalance.title.length - 18))
                      : 0);
                  return EthosCoinBalanceCard(
                    addingXEthosCoin: "${newBalance.toStringAsFixed(2)}",
                    ethosCoinPrice: _selectedCoinBalance.price,
                  );
                }
              }
            }),
        FutureBuilder(
          future: loadCoinDetails(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              print("loadCoinDetails:ConnectionState.waiting");
              return AppProgressIndeterminateWidget();
            } else {
              print("loadCoinDetails:ConnectionState.notWaiting");
              widget.updateSelectedCoinBalance(_selectedCoinBalance);
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ActionNeuIconButton(
                      buttonIcon: FeatherIcons.minus,
                      buttonActionOnPressed: () {
                        reduceEthosCoin();
                      },
                      isPrimaryButton: false,
                      isPrimaryButtonDisabled: _selectedCoinBalanceIndex == 0,
                      buttonTitle:
                          "Reduce ${_coinDetails[_selectedCoinBalanceIndex > 0 ? _selectedCoinBalanceIndex - 1 : 0].title.substring(0, _selectedCoinBalance.title.length - 19)}",
                    ),
                  ),
                  Expanded(
                    child: ActionNeuIconButton(
                      buttonIcon: FeatherIcons.plus,
                      buttonActionOnPressed: () {
                        addEthosCoin();
                      },
                      isPrimaryButtonDisabled:
                          _selectedCoinBalanceIndex == _coinDetails.length - 1,
                      buttonTitle:
                          "Add ${_coinDetails[_selectedCoinBalanceIndex != _coinDetails.length - 1 ? _selectedCoinBalanceIndex + 1 : _coinDetails.length - 1].title.substring(0, _selectedCoinBalance.title.length - 18)}",
                      isSecondaryButton: true,
                    ),
                  ),
                ],
              );
            }
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: RichText(
                text: TextSpan(
                  text:
                      "At once in-app, you can add a minimum of 100 and a maximum of 6400 EthosCoin Balance.",
                  style: AppTextStyle.formInfoTextStyle(context),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ActionNeuButton(
                buttonTitle: "Continue",
                buttonActionOnPressed: () {
                  addEthosCoinBalance();
                },
                isPrimaryButton: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 32),
      ],
    );
  }

  reduceEthosCoin() {
    if (_selectedCoinBalanceIndex > 0) {
      setState(() {
        _selectedCoinBalanceIndex = _selectedCoinBalanceIndex - 1;
        _selectedCoinBalance = _coinDetails[_selectedCoinBalanceIndex];
      });
      widget.updateSelectedCoinBalance(_selectedCoinBalance);
    }
  }

  addEthosCoin() {
    if (_selectedCoinBalanceIndex < _coinDetails.length - 1) {
      setState(() {
        _selectedCoinBalanceIndex = _selectedCoinBalanceIndex + 1;
        _selectedCoinBalance = _coinDetails[_selectedCoinBalanceIndex];
      });
      widget.updateSelectedCoinBalance(_selectedCoinBalance);
    }
  }

  addEthosCoinBalance() async {
    var purchaseParam =
        EthosCoinPayments().getEthosCoinPurchaseParam(_selectedCoinBalance);
    await InAppPurchase.instance.buyConsumable(
      purchaseParam: purchaseParam,
    );
  }

  loadCoinDetails() async {
    Set<String> _kIds = {};
    if (Platform.isAndroid) {
      _kIds = <String>{
        "50gramx.add.ethoscoin.100",
        "50gramx.add.ethoscoin.200",
        "50gramx.add.ethoscoin.400",
        "50gramx.add.ethoscoin.800",
        "50gramx.add.ethoscoin.1600",
        "50gramx.add.ethoscoin.3200",
        "50gramx.add.ethoscoin.6400",
      }.toSet();
    } else if (Platform.isIOS) {
      _kIds = <String>{
        "50gramx.add.ethoscoin.84",
        "50gramx.add.ethoscoin.164",
        }.toSet();
    }

    print("Will query product details");
    for (var _kId in _kIds) {
      print("query for product id: $_kId");
      var fetchedProduct = (await _inAppPurchase.queryProductDetails([_kId].toSet()));
      _coinDetails.addAll(fetchedProduct.productDetails);
      print("fetchedProduct: $fetchedProduct");
      print("fetchedProduct.error.message: ${fetchedProduct.error?.message}");
      print("fetchedProduct.error.source: ${fetchedProduct.error?.source}");
      print("fetchedProduct.error.details: ${fetchedProduct.error?.details}");
      print("fetchedProduct.error.code: ${fetchedProduct.error?.code}");
      print("fetchedProduct.notFoundIDs: ${fetchedProduct.notFoundIDs}");
    }
    print("query product details done");
    _selectedCoinBalance = _coinDetails[0];
  }

  refreshSelectedCoin() async {
    setState(() {
      _selectedCoinBalance = _coinDetails[0];
    });
  }
}
