import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/utils/app_textstyles.dart';
import 'package:shoestore/view/widgets/filter_bottom_sheet.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'All Products',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
        //search icon
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),

          //filter icon
          IconButton(
            onPressed: () => FilterBottomSheet.show(context),
            icon: Icon(
              Icons.filter_list,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
