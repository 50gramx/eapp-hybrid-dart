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
      print("LayoutBreakpoint.getBreakpoint: 2 @ ${screenWidth}");
      return 2;
    } else if (screenWidth < 500) {
      print("LayoutBreakpoint.getBreakpoint: 3 @ ${screenWidth}");
      return 3;
    } else if (screenWidth < 690) {
      print("LayoutBreakpoint.getBreakpoint: 4 @ ${screenWidth}");
      return 4;
    } else if (screenWidth < 1056) {
      print("LayoutBreakpoint.getBreakpoint: 5 @ ${screenWidth}");
      return 5;
    } else if (screenWidth < 1312) {
      print("LayoutBreakpoint.getBreakpoint: 6 @ ${screenWidth}");
      return 6;
    } else {
      print("LayoutBreakpoint.getBreakpoint: 7 @ ${screenWidth}");
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
