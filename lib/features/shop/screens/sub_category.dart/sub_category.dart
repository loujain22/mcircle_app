import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/common/widgets/appbar/circular_back_button.dart';
import 'package:mcircle_app/common/widgets/dropdown_form_field/e_dropdown_form_field.dart';
import 'package:mcircle_app/common/widgets/search_widget/search_widget.dart';
import 'package:mcircle_app/features/shop/screens/sub_category.dart/widgets/tabs/category_tabbar.dart';
import 'package:mcircle_app/features/shop/screens/sub_category.dart/widgets/tabs/pages/all_tab.dart';
import 'package:mcircle_app/features/shop/screens/sub_category.dart/widgets/tabs/pages/cars_tab.dart';
import 'package:mcircle_app/features/shop/screens/sub_category.dart/widgets/tabs/pages/parts_tab.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({super.key});

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // This listener ensures the custom widget updates when you swipe or tap
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color themeColor = EColors.primary;

    final List<String> productImages = [
      'assets/products_card/car1.jpg',
      'assets/products_card/car2.jpg',
      'assets/products_card/car3.jpg',
      'assets/products_card/car4.jpg',
      'assets/products_card/car1.jpg',
      'assets/products_card/car2.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70,
        leading: const Center(
          child: CircularBackButton(),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.heart_copy,
                size: ESizes.iconLg,
              ))
        ],
        centerTitle: true,
        title: const Text('Vehicle',
            style:
                TextStyle(fontSize: ESizes.s20, fontWeight: FontWeight.w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: ESizes.s16, vertical: ESizes.s20),
        child: Column(
          children: [
            CategoryTabBar(controller: _tabController),

            const SizedBox(height: ESizes.defaultSpace),
            Row(
              children: [
                Expanded(
                  child: EDropdown(
                    label: "Saudi Arabia",
                    items: const ["Saudi Arabia", "Egypt"],
                    onChanged: (val) {},
                  ),
                ),
                const SizedBox(width: ESizes.sapceBtwInputFields),
                Expanded(
                  child: EDropdown(
                    label: "State",
                    items: const ["Riyadh", "Jeddah"],
                    onChanged: (val) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: ESizes.defaultSpace),
            const SearchWidget(themeColor: themeColor),
            const SizedBox(height: ESizes.s16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Sort by :: ",
                    style: TextStyle(
                        color: Colors.grey, fontSize: ESizes.fontSizeSm)),
                DropdownButton<String>(
                  value: "Recommended",
                  underline: const SizedBox(),
                  items: ["Recommended", "Newest"]
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e,
                              style: const TextStyle(
                                  fontSize: ESizes.fontSizeSm))))
                      .toList(),
                  onChanged: (v) {},
                ),
              ],
            ),
            const SizedBox(height: ESizes.s12),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AllPage(themeColor: themeColor),
                  CarsPage(themeColor: themeColor),
                  PartsPage(themeColor: themeColor),
                ],
              ),
            ),
            // Expanded(
            //   child: MasonryGridView.count(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 15,
            //     crossAxisSpacing: 15,
            //     itemCount: 6,
            //     itemBuilder: (context, index) {
            //       return ProductCard(
            //           themeColor: themeColor, imagePath: productImages[index]);
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
