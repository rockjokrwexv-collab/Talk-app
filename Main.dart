import 'package:flutter/material.dart';
import 'accessibility_service.dart';

void main() {
  runApp(const TalkApp());
}

class TalkApp extends StatelessWidget {
  const TalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () => AccessibilityService().performClick(),
            child: const Text('Perform Click'),
          ),
        ),
      ),
    );
  }
}
