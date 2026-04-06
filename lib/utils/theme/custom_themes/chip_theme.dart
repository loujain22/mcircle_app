import 'package:flutter/material.dart';

class EChipTheme {
  EChipTheme._();

// -- Light Theme --
  static ChipThemeData lightChipTheme = const ChipThemeData(
    disabledColor: Colors.disabled,
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

// -- Dark Theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.disabled,
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
