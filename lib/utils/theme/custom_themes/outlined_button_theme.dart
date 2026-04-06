import 'package:flutter/material.dart';

class EOutlinedButtonTheme {
  EOutlinedButtonTheme._();

  // -- Light Theme --
  static final lightOulinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.blue),
        textStyle: const TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
  );

  // -- Dark Theme --
  static final darkOulinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        //   elevation: 0,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.blueAccent),
        textStyle: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
  );
}
