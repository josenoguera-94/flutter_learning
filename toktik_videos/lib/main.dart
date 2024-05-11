import 'package:flutter/material.dart';
import 'package:toktik_videos/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TokTik',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TokTik'),
        ),
        body: const Center(
          child: Text('Hello, world!'),
        ),
      ),
    );
  }
}
