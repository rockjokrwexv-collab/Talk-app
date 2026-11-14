import 'package:flutter/services.dart';

class AccessibilityService {
  static const MethodChannel _channel = const MethodChannel('com.example.talkapp/accessibility');

  Future<void> performClick() async {
    try {
      await _channel.invokeMethod('performClick');
    } on PlatformException catch (e) {
      print("Failed to perform click: '${e.message}'.");
    }
  }
}
