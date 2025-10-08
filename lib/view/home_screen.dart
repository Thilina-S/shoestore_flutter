import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/controllers/theme_controller.dart';
import 'package:shoestore/view/all_products_screen.dart';
import 'package:shoestore/view/cart_screen.dart';
import 'package:shoestore/view/notifications/view/notifications_screen.dart';
import 'package:shoestore/view/widgets/category_chips.dart';
import 'package:shoestore/view/widgets/custom_search_bar.dart';
import 'package:shoestore/view/widgets/product_grid.dart';
import 'package:shoestore/view/widgets/sale_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // 🧠 Header Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // 👤 Profile Avatar
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  const SizedBox(width: 12),

                  // 👋 Greeting Text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Thilina,',
                        style: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.grey[400] : Colors.grey[600],
                        ),
                      ),
                      const Text(
                        'Good Morning,',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  // 🔔 Notification Icon
                  IconButton(
                    onPressed: () => Get.to(() =>  NotificationsScreen()),
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: isDark ? Colors.white : Colors.black,
                    ),
                  ),

                  // 🛒 Cart Icon
                  IconButton(
                    onPressed: () => Get.to(() => const CartScreen()),
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: isDark ? Colors.white : Colors.black,
                    ),
                  ),

                  // 🌗 Theme Toggle
                  GetBuilder<ThemeController>(
                    builder: (controller) => IconButton(
                      onPressed: controller.toggleTheme,
                      icon: Icon(
                        controller.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 🔍 Search Bar
            const CustomSearchBar(),

            // 🏷️ Category Chips
            const CategoryChips(),

            // 🏷️ Sale Banner
            const SaleBanner(),

            // 📦 Popular Products Title Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Products',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => const AllProductsScreen()),
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 🧩 Product Grid
            const Expanded(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
