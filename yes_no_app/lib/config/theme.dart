import 'package:flutter/material.dart';

// Create a class to hold the theme

const Color _customColor = Color(0xFF00FF00);
// para colores hexadecimales se usa 0xFF seguido de los 6 dígitos del color
// fromArgb(255, 0, 255, 0)
// _variable para indicar que es privada
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue, // Colors.blue[300] es un tono más claro
  Colors.teal,
  Colors.purple,
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}): 
    assert(
      selectedColor >= 0 && selectedColor < _colorThemes.length,
      'Colors must be between 0 and ${_colorThemes.length - 1} inclusive.'
    );

  ThemeData theme() {
    return ThemeData(
      // ThemeData() sin parámetros es el tema por defecto de la app
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light, // Brightness.dark, light por defecto
    );
  }
}
