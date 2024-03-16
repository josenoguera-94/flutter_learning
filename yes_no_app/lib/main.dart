import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes no App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        selectedColor: 7,
      ).theme(),
      home: Scaffold(
        body: Center(
            child: FilledButton.tonal(
                onPressed: () {}, child: const Text('Click me'))),
      ),
    );
  }
}
