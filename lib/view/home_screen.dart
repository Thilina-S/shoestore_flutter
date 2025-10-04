import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/state_manager.dart';
import 'package:shoestore/controllers/theme_controller.dart';
import 'package:shoestore/view/widgets/category_chips.dart';
import 'package:shoestore/view/widgets/custom_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            //header section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),

                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Thilina,',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        'Good Morning,',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  //notification icon
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                  ),

                  //cart button
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),

                  //theme button
                  GetBuilder<ThemeController>(
                    builder: (controller) => IconButton(
                      onPressed: () => controller.toggleTheme(),
                      icon: Icon(
                        controller.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                    ),
                  ),
                ],
              ),
            ),


            //search bar
            const CustomSearchBar(),

            //category chips
            const CategoryChips()




          ],
        ),
      ),
    );
  }
}
