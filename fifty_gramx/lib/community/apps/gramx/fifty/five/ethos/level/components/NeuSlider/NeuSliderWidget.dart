import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuSliderWidget extends StatefulWidget {
  @override
  const NeuSliderWidget({
    Key? key,
    required this.sliderFor,
    required this.sliderValue,
    required this.onChanged,
    required this.value,
    required this.divisions,
    final this.min = 10,
    final this.max = 100,
  }) : super(key: key);

  final String sliderFor;
  final String sliderValue;
  final Function(double) onChanged;
  final double value;
  final int divisions;
  final double min;
  final double max;

  @override
  State<NeuSliderWidget> createState() => _NeuSliderWidgetState();
}

class _NeuSliderWidgetState extends State<NeuSliderWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 8, right: 32, left: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.sliderFor,
                  style: AppTextStyle.formInfoTextStyle(context)),
              Text(widget.sliderValue,
                  style: AppTextStyle.themeTitleTextStyle(context)),
            ],
          ),
        ),
        Neumorphic(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.backgroundPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          child: Slider(
            onChanged: widget.onChanged,
            min: widget.min,
            max: widget.max,
            divisions: widget.divisions,
            label: widget.sliderValue,
            value: widget.value,
          ),
        ),
      ],
    );
  }
}
