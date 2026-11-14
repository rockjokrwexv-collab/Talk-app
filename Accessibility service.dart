import 'package:flutter/services.dart';

class AccessibilityService {
  static final MethodChannel _channel = MethodChannel('com.example.talkapp/accessibility');

  static Future<void> performClick() async {
    try {
      await _channel.invokeMethod('performClick');
    } on PlatformException catch (e) {
      print("Failed to perform click: '${e.message}'.");
    }
  }

  static Future<void> performGlobalAction(int action) async {
    try {
      await _channel.invokeMethod('performGlobalAction', {'action': action});
    } on PlatformException catch (e) {
      print("Failed to perform action: '${e.message}'.");
    }
  }
}
