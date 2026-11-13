import 'package:flutter/material.dart';

void main() {
  runApp(TalkApp());
}

class TalkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Welcome to TalkApp'),
        ),
      ),
    );
  }
}

