import 'package:eapp_dart_domain/ethos/elint/entities/space.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemTitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/appTabBar.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class SelectSpaceKindDomainCollarLabelPage extends StatefulWidget {
  const SelectSpaceKindDomainCollarLabelPage({
    Key? key,
    required this.selectedCollarLabel,
    required this.onSelectCollarLabel,
    required this.spaceKind,
  }) : super(key: key);

  final String selectedCollarLabel;
  final Function(String) onSelectCollarLabel;
  final SpaceKind spaceKind;

  @override
  State<SelectSpaceKindDomainCollarLabelPage> createState() =>
      _SelectSpaceKindDomainCollarLabelPageState();
}

class _SelectSpaceKindDomainCollarLabelPageState
    extends State<SelectSpaceKindDomainCollarLabelPage> {
  final knowledgeCollarOptions = [
    {'label': 'DC4999999XX', 'value': "Files"},
  ];

  final serviceCollarOptions = [
    {'label': 'DC500000000', 'value': "AI Personality"},
    {'label': 'DC499999999', 'value': "Pod Deployement"},
    {'label': 'DC499999998', 'value': "VM Instance"},
  ];

  final productCollarOptions = [
    {'label': 'DC499999994', 'value': "Skincare Products"},
  ];

  @override
  Widget build(BuildContext context) {
    var collarOptions = widget.spaceKind == SpaceKind.KNOWLEDGE
        ? knowledgeCollarOptions
        : (widget.spaceKind == SpaceKind.SERVICE
            ? serviceCollarOptions
            : productCollarOptions);
    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary(context),
      appBar: CustomAppBar(
          labelText: "Select domain collar",
          actionLabelText: "",
          isBackEnabled: false,
          isActionEnabled: false,
          trailingButtonCallback: () {}),
      body: ListView.builder(
          itemCount: collarOptions.length,
          itemBuilder: (context, position) {
            String collarLabel = collarOptions[position]["label"].toString();
            String formattedText =
                "${collarLabel} Collar - ${collarOptions[position]["value"].toString()}";
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
                child: NeumorphicRadio<String>(
                  child: ListTile(
                    dense: true,
                    title: ListItemTitleTextWidget(
                      titleText: formattedText,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    trailing: collarLabel == widget.selectedCollarLabel
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
                  value: collarLabel,
                  groupValue: widget.selectedCollarLabel,
                  onChanged: (updatedCollarLabel) {
                    widget.onSelectCollarLabel(updatedCollarLabel!);
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
