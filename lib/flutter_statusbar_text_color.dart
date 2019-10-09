import 'package:flutter/services.dart';

class FlutterStatusbarTextColor {
  static const MethodChannel _channel =
      const MethodChannel('flutter_statusbar_text_color');

  static String light = 'light';
  static String dark = 'dark';

  static setTextColor(String mode) async {
    await _channel.invokeMethod(mode ?? 'default');
  }
}
