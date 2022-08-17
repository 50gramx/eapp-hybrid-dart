import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton(
      {Key? key, required this.dropdownItems, required this.onChange})
      : super(key: key);

  final List<String> dropdownItems;
  final Function(String) onChange;

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.dropdownItems[0];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // dropdownValue = widget.dropdownItems[0];
    return Neumorphic(
      margin: EdgeInsets.symmetric(vertical: 8),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundPrimary(context),
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: ListTile(
            title: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: AppColors.backgroundPrimary(context),
                value: dropdownValue,
                style: AppTextStyle.themePrimaryButtonTextStyle(context),
                onChanged: (String? newValue) {
                  setState(() {
                    print("selected newValue: $newValue");
                    dropdownValue = newValue!;
                    widget.onChange(newValue);
                  });
                },
                isDense: true,
                items: widget.dropdownItems
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(
                        color: value == "No Invitations" ? AppColors.contentTertiary(context) : AppColors.contentPrimary(context),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        height: 1.25)),
                  );
                }).toList(),
              ),
            ),
          )),
    );
  }
}
