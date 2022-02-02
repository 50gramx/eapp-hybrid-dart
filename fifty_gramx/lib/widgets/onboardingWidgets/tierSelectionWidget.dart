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

import 'dart:ui';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/onboardingWidgets/freeTierBenefitsCardItem.dart';
import 'package:fifty_gramx/widgets/onboardingWidgets/tierDropdownRichText.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class TierSelectionWidget extends StatefulWidget {
  const TierSelectionWidget({Key? key, required this.updateSelectedTier})
      : super(key: key);

  final Function updateSelectedTier;

  @override
  State<TierSelectionWidget> createState() => _TierSelectionWidgetState();
}

class _TierSelectionWidgetState extends State<TierSelectionWidget> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  @override
  void initState() {
    loadTierDetails();
    super.initState();
  }

  List<ProductDetails> _tierDetails = [];

  ProductDetails _selectedTier = ProductDetails(
      currencyCode: "INR",
      description: "Flat Pricing",
      id: "50gramx.subscription.tier.flat",
      price: "10",
      rawPrice: 10.00,
      title: "Flat Pricing");

  int _tierNumber = 0;

  Map<String, Container> _tierDetailsRichTexts = {};
  late ProductDetailsResponse tierDetailsResponse;

  List<String> tierOpenInferences = ["Zero", "Two", "Eight", "Thirty Two"];
  List<String> tierClosedInferences = [
    "Two",
    "Eight",
    "Thirty Two",
    "Sixty Four"
  ];
  List<String> tierKnowledgeLearning = [
    "Five",
    "Fifty",
    "Five Hundred",
    "Five Thousand"
  ];
  List<String> tierKnowledgeLearningFlatPrice = [
    "₹0.75",
    "₹0.60",
    "₹0.50",
    "₹0.25"
  ];
  List<String> tierKnowledgeLearningFast = [
    "Baseline",
    "Fifty X",
    "Three Hundred X",
    "Eight Hundred X"
  ];
  List<String> tierLaunchDomain = ["One", "Two", "Four", "Eight"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Neumorphic(
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.backgroundTertiary(context),
            depth: -6,
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Container(
            color: AppColors.backgroundTertiary(context),
            height: 190, //300, //115,
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FreeTierBenefitsCardItem(
                      tierBenefitTitle:
                          "${_selectedTier.id == "50gramx.space.tier.starter" ? "Free" : "${_selectedTier.price}/mo"}",
                      tierBenefitFeatureName: _selectedTier.title
                          .substring(0, _selectedTier.title.length - 8),
                      tierBenefitSpaceName: "Personal Space",
                      tierMetaText: _selectedTier.description,
                      tierNumber: 0),
                  FreeTierBenefitsCardItem(
                      tierBenefitTitle: "Limit-less",
                      tierBenefitFeatureName: "People Connections",
                      tierBenefitSpaceName: "Identity",
                      tierMetaText: "free for every hour of the month"),
                  FreeTierBenefitsCardItem(
                      tierBenefitTitle: "Limit-less",
                      tierBenefitFeatureName: "Ethosai Connections",
                      tierBenefitSpaceName: "Identity",
                      tierMetaText: "free for every hour of the month"),
                  FreeTierBenefitsCardItem(
                      tierBenefitTitle: "Limit-less",
                      tierBenefitFeatureName: "Speed Messages",
                      tierBenefitSpaceName: "Conversations",
                      tierMetaText: "free for every hour of the month"),
                  FreeTierBenefitsCardItem(
                      tierBenefitTitle: "Limit-less",
                      tierBenefitFeatureName: "Actionable Messages",
                      tierBenefitSpaceName: "Conversations",
                      tierMetaText: "free for every hour of the month"),
                  FreeTierBenefitsCardItem(
                    tierBenefitTitle: tierLaunchDomain[_tierNumber],
                    tierBenefitFeatureName: "Page Domain Launch",
                    tierBenefitSpaceName: "Knowledge",
                    tierMetaText:
                        "free per day then ₹75 per Launch post benefits",
                  ),
                  FreeTierBenefitsCardItem(
                      tierBenefitTitle: tierKnowledgeLearning[_tierNumber],
                      tierBenefitFeatureName: "Page Learning",
                      tierBenefitSpaceName: "Knowledge Domain",
                      tierMetaText:
                          "free per month then ${tierKnowledgeLearningFlatPrice[_tierNumber]} per Page per month post benefits"),
                  FreeTierBenefitsCardItem(
                    tierBenefitTitle: tierKnowledgeLearningFast[_tierNumber],
                    tierBenefitFeatureName: "Learning Speed",
                    tierBenefitSpaceName: "Knowledge Domain",
                    tierMetaText: "free for every hour of the month",
                  ),
                  FreeTierBenefitsCardItem(
                    tierBenefitTitle: tierOpenInferences[_tierNumber],
                    tierBenefitFeatureName: "Open Inference",
                    tierBenefitSpaceName: "Knowledge Domain",
                    tierMetaText:
                        "free per day then ₹10 per Inference post benefits",
                  ),
                  FreeTierBenefitsCardItem(
                      tierBenefitTitle: "${tierClosedInferences[_tierNumber]}",
                      tierBenefitFeatureName: "Closed Inference",
                      tierBenefitSpaceName: "Knowledge Domain",
                      tierMetaText:
                          "free per day then ₹5 per Inference post benefits"),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Neumorphic(
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.backgroundInverseSecondary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                  child: Container(
                    decoration: ShapeDecoration(
                      color: AppColors.backgroundInverseSecondary(context),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        icon: Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(Icons.expand_more_sharp,
                                color:
                                    AppColors.contentInversePrimary(context))),
                        dropdownColor:
                            AppColors.backgroundInverseSecondary(context),
                        value: _selectedTier.title
                            .substring(0, _selectedTier.title.length - 8),
                        // alignment: Alignment.center,
                        style: TextStyle(
                            color: AppColors.contentInversePrimary(context),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                        onChanged: (String? newValue) {
                          setState(() {
                            onTierChange(newValue!);
                          });
                        },
                        items: _tierDetails.map<DropdownMenuItem<String>>(
                            (ProductDetails _tierDetail) {
                          return DropdownMenuItem<String>(
                            value: _tierDetail.title
                                .substring(0, _tierDetail.title.length - 8),
                            child: _tierDetailsRichTexts[_tierDetail.title
                                .substring(0, _tierDetail.title.length - 8)]!,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  onTierChange(String tierTitle) {
    if (tierTitle == "Starter ") {
      setState(() {
        _selectedTier = _tierDetails[0];
        _tierNumber = 0;
      });
      widget.updateSelectedTier(_tierDetails[0]);
    } else if (tierTitle == "Basic ") {
      setState(() {
        _selectedTier = _tierDetails[1];
        _tierNumber = 1;
      });
      widget.updateSelectedTier(_tierDetails[1]);
    } else if (tierTitle == "Standard ") {
      setState(() {
        _selectedTier = _tierDetails[2];
        _tierNumber = 2;
      });
      widget.updateSelectedTier(_tierDetails[2]);
    } else if (tierTitle == "Professional ") {
      setState(() {
        _selectedTier = _tierDetails[3];
        _tierNumber = 3;
      });
      widget.updateSelectedTier(_tierDetails[3]);
    }
  }

  loadTierDetails() async {
    Set<String> _kIds = <String>{
      "50gramx.space.tier.starter",
      "50gramx.space.tier.basic",
      "50gramx.space.tier.standard",
      "50gramx.space.tier.professional",
    }.toSet();
    for (var _kId in _kIds) {
      _tierDetails.addAll(
          (await _inAppPurchase.queryProductDetails([_kId].toSet()))
              .productDetails);
    }

    setState(() {
      // _tierDetails.addAll(tierDetailsResponse.productDetails);
      for (var _tier in _tierDetails) {
        _tierDetailsRichTexts[
            _tier.title
                .substring(0, _tier.title.length - 8)] = Container(
            child: FreeTierDropDownRichText(
                tierName: _tier.title.substring(0, _tier.title.length - 8)));
      }
      _selectedTier = _tierDetails[0];
      _tierNumber = 0;
    });
    widget.updateSelectedTier(_selectedTier);
  }
}
