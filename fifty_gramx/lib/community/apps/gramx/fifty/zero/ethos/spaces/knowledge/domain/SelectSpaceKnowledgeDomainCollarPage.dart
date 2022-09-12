import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemTitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/appTabBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class SelectSpaceKnowledgeDomainCollarPage extends StatefulWidget {
  const SelectSpaceKnowledgeDomainCollarPage({
    Key? key,
    required this.selectedCollarEnum,
    required this.selectedSpaceKnowledgeDomainCollarEnum,
  }) : super(key: key);

  final SpaceKnowledgeDomainCollarEnum selectedCollarEnum;
  final Function(SpaceKnowledgeDomainCollarEnum)
      selectedSpaceKnowledgeDomainCollarEnum;

  @override
  State<SelectSpaceKnowledgeDomainCollarPage> createState() =>
      _SelectSpaceKnowledgeDomainCollarPageState();
}

class _SelectSpaceKnowledgeDomainCollarPageState
    extends State<SelectSpaceKnowledgeDomainCollarPage> {
  updateSelectedCollarEnum(updatedEnum) {
    widget.selectedSpaceKnowledgeDomainCollarEnum(updatedEnum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary(context),
      appBar: CustomAppBar(
          labelText: "Select domain collar",
          actionLabelText: "",
          isBackEnabled: false,
          isActionEnabled: false,
          trailingButtonCallback: () {}),
      body: ListView.builder(
          itemCount: SpaceKnowledgeDomainCollarEnum.values.length,
          itemBuilder: (context, position) {
            var positionEnum = SpaceKnowledgeDomainCollarEnum.valueOf(position);
            String titleText =
                positionEnum!.name.substring(0, positionEnum.name.length - 7);
            String formattedText =
                "${titleText[0]}${titleText.substring(1, titleText.length).toLowerCase()} Collar";
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Neumorphic(
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundPrimary(context),
                    width: 2,
                  ),
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                ),
                child: NeumorphicRadio<SpaceKnowledgeDomainCollarEnum>(
                  child: ListTile(
                    dense: true,
                    title: ListItemTitleTextWidget(
                      titleText: formattedText,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    trailing: positionEnum == widget.selectedCollarEnum
                        ? CircleAvatar(
                            radius: 12,
                            backgroundColor:
                                AppColors.backgroundPrimary(context),
                            child: Icon(
                              FeatherIcons.checkCircle,
                              color: AppColors.contentPrimary(context),
                            ),
                          )
                        : SizedBox(),
                  ),
                  value: positionEnum,
                  groupValue: widget.selectedCollarEnum,
                  onChanged: (SpaceKnowledgeDomainCollarEnum? updatedValue) {
                    updateSelectedCollarEnum(updatedValue);
                    Navigator.of(context).pop();
                  },
                  style: NeumorphicRadioStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
