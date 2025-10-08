import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/utils/app_textstyles.dart';
import 'package:shoestore/view/privacy%20policy/widgets/info_section.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    appBar: AppBar(
      leading: IconButton(onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: isDark ? Colors.white: Colors.black,
        ),
        ),
      title: Text(
        'Terms of service',
        style: AppTextStyle.withColor(
              AppTextStyle.h3,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
      ),
    ),
    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(screenSize.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoSection(
             title: 'Welcome to Fashion Store',
             content: 
             'By accessing and using this application, you accept and agree to be bound by the terms and policy'
             ),
             InfoSection(
             title: 'Account Registration',
             content: 
             'By accessing and using this application, you accept and agree to be bound by the terms and policy'
             ),
             InfoSection(
             title: 'User Responsibilitis',
             content: 
             'By accessing and using this application, you accept and agree to be bound by the terms and policy'
             ),
             InfoSection(
             title: 'privacy policy',
             content: 
             'By accessing and using this application, you accept and agree to be bound by the terms and policy'
             ),
             InfoSection(
             title: 'intectual property',
             content: 
             'By accessing and using this application, you accept and agree to be bound by the terms and policy'
             ),
             InfoSection(
             title: 'Termination',
             content: 
             'By accessing and using this application, you accept and agree to be bound by the terms and policy'
             ),

             const SizedBox(height: 24),
              Text(
                'Last update: March 2024',
                style: AppTextStyle.withColor(
                  AppTextStyle.bodySmall,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              )
          ],
        ),
      ),
    ),
    );
  }
}
