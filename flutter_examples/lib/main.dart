import 'package:flutter/material.dart';
import 'package:flutter_examples/config/routes.dart';
import 'package:flutter_examples/config/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Examples',
      routes: router,
      theme: AppTheme.theme,
    );
  }
}
