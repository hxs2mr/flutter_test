import 'dart:async';

import 'package:flutter/services.dart';

class FlutterFristplugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_fristplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
