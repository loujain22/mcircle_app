import 'package:mcircle_app/navigation_menu.dart';
import 'package:mcircle_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mcircle',
        themeMode: ThemeMode.system,
        theme: EAppTheme.lightTheme,
        darkTheme: EAppTheme.darkTheme,
        home: const NavigationMenu());
  }
}
