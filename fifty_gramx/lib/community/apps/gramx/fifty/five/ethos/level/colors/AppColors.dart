import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AppColors {
  static const primaryColor = Color(0xFFF5F5F5);
  static const secondaryColor = Color(0xFF141414);
  static const accentColor = Color(0xFF276EF1);

  // Gray Shades
  static const white = Color(0xFFFFFFFF);
  static const gray50 = Color(0xFFF6F6F6);
  static const gray100 = Color(0xFFEEEEEE);
  static const gray200 = Color(0xFFE2E2E2);
  static const gray300 = Color(0xFFCBCBCB);
  static const gray400 = Color(0xFFAFAFAF);
  static const gray500 = Color(0xFF757575);
  static const gray600 = Color(0xFF545454);
  static const gray700 = Color(0xFF333333);
  static const gray800 = Color(0xFF1F1F1F);
  static const gray900 = Color(0xFF141414);
  static const black = Color(0xFF000000);
  static const dividerColor = Color(0xFFE2E2E2);

  // Positive Shades
  static const green300 = Color(0xFF06C167);
  static const green400 = Color(0xFF05944F);

  // Elevated Colors

  // ------------------------------------
  // Foundation
  // ------------------------------------
  static const lightPrimaryA = AppColors.black;
  static const lightPrimaryB = AppColors.white;
  static const darkPrimaryA = AppColors.gray200;
  static const darkPrimaryB = AppColors.gray900;
  static const lightAccent = Color(0xFF7F54C9);
  static const darkAccent = Color(0xFF7F54C9);
  static const lightNegative = Color(0xFFE11900);
  static const darkNegative = Color(0xFFAB1300);
  static const lightWarning = Color(0xFFFFC043);
  static const darkWarning = Color(0xFFBC8B2C);
  static const lightPositive = Color(0xFF05944F);
  static const darkPositive = Color(0xFF03703C);

  static const lightOrange = Color(0xFFFF6937);
  static const darkOrange = Color(0xFF9A3F21);

  static const lightPurple = Color(0xFF7356BF);
  static const darkPurple = Color(0xFF453473);

  static const lightCobalt = Color(0xFF0E1FC1);
  static const darkCobalt = Color(0xFF081270);

  static const lightBlue = Color(0xFF276EF1);
  static const darkBlue = Color(0xFF276EF1);

  static const lightPlatinum = Color(0xFF8FA3AD);
  static const darkPlatinum = Color(0xFF556268);

  static const darkPlatinum2 = Color(0xFF142328);
  static const lightPlatinum2 = Color(0xFFCCDFE5);

  static Color negative(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkNegative;
    } else {
      return AppColors.lightNegative;
    }
  }

  static Color orange(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkOrange;
    } else {
      return AppColors.lightOrange;
    }
  }

  static Color purple(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPurple;
    } else {
      return AppColors.lightPurple;
    }
  }

  static Color cobalt(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkCobalt;
    } else {
      return AppColors.lightCobalt;
    }
  }

  static Color blue(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkBlue;
    } else {
      return AppColors.lightBlue;
    }
  }

  static Color inverseBlue(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.lightBlue;
    } else {
      return AppColors.darkBlue;
    }
  }

  static Color platinum(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPlatinum;
    } else {
      return AppColors.lightPlatinum;
    }
  }

  static Color platinum2(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.lightPlatinum2;
    } else {
      return AppColors.lightPlatinum;
    }
  }

  static Color positive(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPositive;
    } else {
      return AppColors.lightPositive;
    }
  }

  static Color warning(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkWarning;
    } else {
      return AppColors.lightWarning;
    }
  }

  // ------------------------------------
  // Core - Background
  // ------------------------------------

  static Color backgroundPrimary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryB;
    } else {
      return AppColors.lightPrimaryB;
    }
  }

  static Color backgroundSecondary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray800;
    } else {
      return AppColors.gray50;
    }
  }

  static Color backgroundTertiary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray700;
    } else {
      return AppColors.gray100;
    }
  }

  static Color backgroundInversePrimary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryA;
    } else {
      return AppColors.lightPrimaryA;
    }
  }

  static Color backgroundInverseSecondary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray300;
    } else {
      return AppColors.gray800;
    }
  }

  static Color backgroundInverseTertiary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray400;
    } else {
      return AppColors.gray700;
    }
  }

  // ------------------------------------
  // Core - Content
  // ------------------------------------
  static Color contentPrimary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryA;
    } else {
      return AppColors.lightPrimaryA;
    }
  }

  static Color contentSecondary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray400;
    } else {
      return AppColors.gray600;
    }
  }

  static Color contentTertiary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray500;
    } else {
      return AppColors.gray500;
    }
  }

  static Color contentInversePrimary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryB;
    } else {
      return AppColors.lightPrimaryB;
    }
  }

  static Color contentInverseSecondary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray600;
    } else {
      return AppColors.gray300;
    }
  }

  static Color contentInverseTertiary(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray500;
    } else {
      return AppColors.gray400;
    }
  }

  // ------------------------------------
  // Core - Border
  // ------------------------------------

  static Color borderOpaque(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray700;
    } else {
      return AppColors.gray200;
    }
  }

  static Color borderTransparent(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryA.withAlpha(8);
    } else {
      return AppColors.lightPrimaryA.withAlpha(8);
    }
  }

  static Color borderSelected(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryA;
    } else {
      return AppColors.lightPrimaryA;
    }
  }

  static Color borderInverseOpaque(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray400;
    } else {
      return AppColors.gray700;
    }
  }

  static Color borderInverseTransparent(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryB.withAlpha(20);
    } else {
      return AppColors.lightPrimaryB.withAlpha(20);
    }
  }

  static Color borderInverseSelected(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.darkPrimaryB;
    } else {
      return AppColors.lightPrimaryB;
    }
  }

  // ------------------------------------
  // Core Extensions - Background
  // ------------------------------------

  static Color backgroundStateDisabled(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray800;
    } else {
      return AppColors.gray50;
    }
  }

  static Color backgroundOverlayDark(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.black.withAlpha(30);
    } else {
      return AppColors.black.withAlpha(30);
    }
  }

  static Color backgroundOverlayLight(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.black.withAlpha(8);
    } else {
      return AppColors.black.withAlpha(8);
    }
  }

  // TODO: Add remaining background extensions

  // ------------------------------------
  // Core Extensions - Content
  // ------------------------------------

  static Color contentStateDisabled(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray600;
    } else {
      return AppColors.gray400;
    }
  }

  static Color contentOnColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray100;
    } else {
      return AppColors.white;
    }
  }

  static Color contentPositive(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.green300;
    } else {
      return AppColors.green400;
    }
  }

  static Color contentInversePositive(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.green400;
    } else {
      return AppColors.green300;
    }
  }

  // TODO: Add Content Extensions

  static Color themeNeuContentStateDisabledColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.gray600;
    } else {
      return AppColors.gray400;
    }
  }

  static const darkPrimaryColor = Color(0xFF808080);
  static const darkPrimaryBackgroundColor = Color(0xFF808080);
  static const ErrorColor = Color(0xFF808080);
  static const neuBackground = Color(0xFF808080);

  // Light Theme Colors
  static const lightNeuPrimary = Color(0xFFF5F5F5);
  static const lightNeuPrimaryBackground = Color(0xFFD6D6D6);
  static const lightNeuSecondary = Color(0xFF141414);
  static const lightNeuSecondaryBackground = Color(0xFF6C6C6C);
  static const lightNeuSecondaryButton = Color(0xFFEEEEEE);

  // Dark Theme Colors
  static const darkNeuPrimary = Color(0xFF141414);

  // Theme Colors
  static Color textColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.primaryColor;
    } else {
      return AppColors.secondaryColor;
    }
  }

  static Color baseColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return AppColors.secondaryColor;
    } else {
      return AppColors.primaryColor;
    }
  }

  static Color gradientStart = Colors.blue; // Start color of the gradient
  static Color gradientEnd = Colors.purple; // End color of the gradient
}
