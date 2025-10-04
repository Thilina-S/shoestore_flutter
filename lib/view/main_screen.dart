import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:shoestore/controllers/navigation_controller.dart';
import 'package:shoestore/controllers/theme_controller.dart';
import 'package:shoestore/view/account_screen.dart';
import 'package:shoestore/view/home_screen.dart';
import 'package:shoestore/view/shopping_screen.dart';
import 'package:shoestore/view/widgets/custom_bottom_navbar.dart';
import 'package:shoestore/view/wishlist_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final NavigationController navigationController = Get.find<NavigationController>(); 


    return GetBuilder<ThemeController>(
      builder: (themecontroller)=> Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Obx(
          () => IndexedStack(
            key: ValueKey(navigationController.currentIndex.value),
            index: navigationController.currentIndex.value,
            children: const [
              HomeScreen(),
              ShoppingScreen(),
              WishlistScreen(),
              AccountScreen(),
            ]
          )
        ),
        ),

        bottomNavigationBar: const CustomBottomNavbar(),

      ),
    );
  }
}
