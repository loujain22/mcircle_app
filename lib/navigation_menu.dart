import 'package:mcircle_app/features/shop/screens/for_you/for_you.dart';
import 'package:mcircle_app/features/shop/screens/home/home.dart';
import 'package:mcircle_app/features/shop/screens/messages/messages.dart';
import 'package:mcircle_app/features/shop/screens/trending/trending.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            iconTheme: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return IconThemeData(color: controller.currentThemeColor.value);
              }
              return const IconThemeData(color: Colors.grey);
            }),
            //   indicatorShape: const CircleBorder(),
            indicatorColor:
                controller.currentThemeColor.value.withOpacity(0.15),
          ),
          child: NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              backgroundColor: darkMode ? EColors.black : Colors.white,
              destinations: const [
                NavigationDestination(
                    icon: Icon(Iconsax.home_copy),
                    selectedIcon: Icon(Iconsax.home),
                    label: 'Home'),
                NavigationDestination(
                    icon: Icon(Iconsax.message_copy),
                    selectedIcon: Icon(Iconsax.message),
                    label: 'Messages'),
                NavigationDestination(
                    icon: Icon(Icons.local_fire_department_outlined),
                    selectedIcon: Icon(Icons.local_fire_department),
                    label: 'Trending'),
                NavigationDestination(
                    icon: Icon(Iconsax.setting_5_copy),
                    selectedIcon: Icon(Iconsax.setting_5),
                    label: 'For You'),
              ]),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final Rx<Color> currentThemeColor = const Color(0xFFF15934).obs;

  final screens = [
    const HomeScreen(),
    const MessagesScreen(),
    const TrendingScreen(),
    const ForYouScreen()
  ];
}
