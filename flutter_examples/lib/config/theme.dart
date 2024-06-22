import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
