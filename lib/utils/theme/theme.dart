import 'package:mcircle_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mcircle_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:mcircle_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mcircle_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:mcircle_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:mcircle_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mcircle_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:mcircle_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme {
  EAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    textTheme: ETextTheme.lightTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: EChipTheme.lightChipTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottmSheetTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOulinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    primaryColor: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    textTheme: ETextTheme.darkTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: EChipTheme.darkChipTheme,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottmSheetTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOulinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.darkInputDecorationTheme,
  );
}
