import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/home_header.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/tabs/custom_pill_tabbar.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/tabs/pages/ads_tab.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/tabs/pages/auction_tab.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/tabs/pages/social_tab.dart';
import 'package:mcircle_app/navigation_menu.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  Color currentThemeColor = EColors.adsTabActive;
  Color UnselectedContentTab = EColors.adsTabUnselected;

  Color _getTabColor(int index) {
    switch (index) {
      case 0:
        return EColors.adsTabActive; // Ads -> Orange
      case 1:
        return EColors.auctionTabActive; // Auction -> Red
      case 2:
        return EColors.socialTabActive; // Social -> Baby Blue
      default:
        return EColors.adsTabActive;
    }
  }

  Color _getUnSelectedColor(int index) {
    switch (index) {
      case 0:
        return EColors.adsTabUnselected; // Ads -> Orange
      case 1:
        return const Color.fromARGB(255, 99, 13, 0); // Auction -> Red
      case 2:
        return EColors.socialTabUnselected; // Social -> Baby Blue
      default:
        return EColors.adsTabUnselected;
    }
  }

// دالة لجعل لون الخلفية أفتح
  Color _getLightColor(Color color) => color.withOpacity(0.15);

  final navController = Get.find<NavigationController>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // This listener ensures the custom widget updates when you swipe or tap
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        Color newColor = _getTabColor(_tabController.index);
        Color unSelectedColor = _getUnSelectedColor(_tabController.index);
        setState(() {
          currentThemeColor = newColor;
          UnselectedContentTab = unSelectedColor;
        });

        navController.currentThemeColor.value = newColor;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Home Header
            HomeHeader(themeColor: currentThemeColor),

            CustomPillTabBar(
              controller: _tabController,
              activeColor: currentThemeColor,
              backgroundColor: _getLightColor(currentThemeColor),
              unSelectedColor: UnselectedContentTab,
            ),

            const SizedBox(height: ESizes.s12),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  AdsPage(themeColor: currentThemeColor),
                  AuctionPage(themeColor: currentThemeColor),
                  SocialPage(themeColor: currentThemeColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
