import 'dart:ui';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const lightNeuTextStyle = TextStyle(
      color: AppColors.lightNeuPrimary,
      fontSize: 14,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500);

  static const titleTextStyle = TextStyle(
      color: AppColors.lightNeuSecondary,
      fontSize: 16,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      height: 1.25);

  static const progressTitleTextNotProgressedStyle = TextStyle(
      color: AppColors.lightNeuSecondary,
      fontSize: 16,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      height: 1.25);

  static const progressTitleTextProgressedStyle = TextStyle(
      color: AppColors.gray600,
      fontSize: 16,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      height: 1.25);

  static const titleCodeTextStyle = TextStyle(
      color: AppColors.gray600,
      fontSize: 16,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      height: 1.25);

  static const subTitleTextStyle = TextStyle(
      color: AppColors.gray600,
      fontSize: 14,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      height: 1.42857143);

  static appTextStyle([context, Color? textColor,
      double fontSize = 16,
  FontWeight fontWeight = FontWeight.w500,
      double height = 1.5]) {
    textColor ??= AppColors.contentPrimary(context);
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: "Montserrat",
        fontWeight: fontWeight,
        height: height);
  }

  static themeHeadingTextStyle(context) {
    return TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 40,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
        height: 1.5);
  }

  static themeTitleTextStyle(context) {
    return TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        height: 1.5);
  }

  static themeTitleInverseTextStyle(context) {
    return TextStyle(
        color: AppColors.contentInversePrimary(context),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        height: 1.5);
  }

  static themePrimaryButtonTextStyle(context) {
    return TextStyle(
        color: AppColors.baseColor(context),
        fontSize: 14,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500);
  }

  static themeSecondaryButtonTextStyle(context) {
    return TextStyle(
        color: AppColors.textColor(context),
        fontSize: 14,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500);
  }

  static buttonTextStyle(context) {
    return TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 14,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500);
  }

  static buttonTextStyleDisabled(context) {
    return TextStyle(
        color: AppColors.contentStateDisabled(context),
        fontSize: 14,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500);
  }

  static themeProgressTitleTextActiveStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
        height: 1.25);
  }

  static themeProgressTitleTextProgressedStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentSecondary(context),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
        height: 1.25);
  }

  static themeProgressTitleTextDisabledStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentStateDisabled(context),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
        height: 1.25);
  }

  static messageTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 18,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.55);
  }

  // Forms Starts here
  static formInfoTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentTertiary(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.14285714);
  }

  static formInfoWarningTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.warning(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.14285714);
  }

  static formInfoPositiveTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.positive(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.14285714);
  }

  static formInfoSuccessTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.blue(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.14285714);
  }


  static formSubHeadingTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentSecondary(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.14285714);
  }

  static formSummaryLabelTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentSecondary(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        height: 1.14285714);
  }

  static formSummaryValueTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentSecondary(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.14285714);
  }

  static formIndicatorValueTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentSecondary(context),
        fontSize: 14,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
        height: 1.14285714);
  }

  // Forms ends here

  static sentMessageTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentInversePrimary(context),
        fontSize: 18,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.55);
  }

  static messageEntityNameTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentTertiary(context),
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.33333333);
  }

  static messageTimeTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentTertiary(context),
        fontSize: 10,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        height: 1.66666667);
  }

  static sentMessageTimeTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentInverseTertiary(context),
        fontSize: 10,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        height: 1.66666667);
  }


  static toggleBackgroundTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        height: 1.66666667);
  }

  static toggleForegroundTextStyle(BuildContext context) {
    return TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
        height: 1.66666667);
  }
}
