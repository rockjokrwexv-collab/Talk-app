import 'package:flutter/material.dart';
import 'accessibility_service.dart';
void main() {
  runApp(TalkApp());
}

class TalkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: ElevatedButton(onPressed: () => AccessibilityService().performClick(), child: const Text('Perform Click')),.
      ),
    );
  }
}

