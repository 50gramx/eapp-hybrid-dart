/*
* Learn more ->
* https://carbondesignsystem.com/guidelines/2x-grid/overview/
* https://yesviz.com/viewport/
* 1 - XXSVP - XX Small View Port- 1 columns -
* 2 - XSVP - X Small - 2 columns - 320px
* 3 - SVP - Small - 4 columns - 428px
* 4 - MVP - Medium - 8 columns - 672px
* 5 - LVP - Large - 16 columns - 1056px
* 6 - XLVP - X Large - 16 columns - 1312px
* 7 - XXLVP - XX Large - 16 columns - 1584
* */
import 'package:flutter/widgets.dart';

class LayoutBreakpoint {
  int getBreakpoint(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 320) {
      return 2;
    } else if (screenWidth < 500) {
      return 3;
    } else if (screenWidth < 690) {
      return 4;
    } else if (screenWidth < 1056) {
      return 5;
    } else if (screenWidth < 1312) {
      return 6;
    } else {
      return 7;
    }
  }

  bool isNavigatingLeft(context) {
    if (this.getBreakpoint(context) > 3) {
      return true;
    } else {
      return false;
    }
  }
}
