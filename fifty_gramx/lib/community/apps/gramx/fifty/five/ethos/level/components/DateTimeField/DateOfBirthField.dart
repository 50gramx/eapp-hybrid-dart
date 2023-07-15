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

import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

class DateOfBirthField extends StatelessWidget {
  @override
  const DateOfBirthField(
      {Key? key, required this.dateOfBirthTextFieldController})
      : super(key: key);

  final TextEditingController dateOfBirthTextFieldController;

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  // Function to validate account dob
  // namely checks whether the age is less than 18 or not
  validateDateOfBirth(int minimumAge) {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    var dateOfBirth = dateFormat.parse(dateOfBirthTextFieldController.text);
    DateTime today = DateTime.now();

    int yearDiff = today.year - dateOfBirth.year;
    int monthDiff = today.month - dateOfBirth.month;
    int dayDiff = today.day - dateOfBirth.day;

    if (yearDiff > minimumAge ||
        yearDiff == minimumAge && monthDiff >= 0 && dayDiff >= 0) {
      // setState: isSaveButtonEnabled = true;
    } else {
      // setState: isSaveButtonEnabled = false;
    }
  }

  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd");

    return Neumorphic(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 16),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              child: DateTimeField(
                decoration: InputDecoration(
                  hintText: 'Official Date of Birth',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  icon: Icon(
                    FeatherIcons.calendar,
                    color: AppColors.contentSecondary(context),
                    size: 16,
                  ),
                ),
                style: AppTextStyle.themeTitleTextStyle(context),
                format: format,
                textAlign: TextAlign.start,
                controller: dateOfBirthTextFieldController,
                onShowPicker: (context, currentValue) {
                  return showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ??
                        DateTime.now().subtract(Duration(days: 6570)),
                    lastDate: DateTime.now().subtract(Duration(days: 4745)),
                    helpText: "DATE OF BIRTH",
                    confirmText: "CONFIRM",
                    cancelText: "DISMISS",
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    initialDatePickerMode: DatePickerMode.year,
                    builder: (context, build) {
                      return Theme(
                        data: ThemeData(
                            fontFamily: "Montserrat",
                            primarySwatch: createMaterialColor(
                                AppColors.contentPrimary(context))),
                        child: build!,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
