import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {
              
            },
             child: const Text('Click me')
          )
        ),
      ),
    );
  }
}
