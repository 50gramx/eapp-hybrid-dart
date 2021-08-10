import 'package:fifty_gramx/ui/device_screen_type.dart';
import 'package:flutter/material.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {required this.orientation,
      required this.deviceScreenType,
      required this.screenSize,
      required this.localWidgetSize});

  String toString() {
    return "orientation:$orientation deviceScreenType:$deviceScreenType screenSize:$screenSize localWidgetSize:$localWidgetSize";
  }
}
