
import 'dart:async';

import 'package:flutter/services.dart';

class EpodNwkXk {
  static const MethodChannel _channel = MethodChannel('epod_nwk_xk');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
