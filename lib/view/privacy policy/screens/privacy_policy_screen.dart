import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/utils/app_textstyles.dart';
import 'package:shoestore/view/privacy%20policy/widgets/info_section.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: isDark ? Colors.white: Colors.black,
        ),
        ),
        title: Text(
          'Privacy Policy',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.05),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoSection(
                title: 'Information We collect',
                content: 'we collect information that you provide directly to us, including name, email address, and this shipping information',
              ),
              InfoSection(
                title: 'How we use your information',
                content: 'we collect information that you provide directly to us, including name, email address, and this shipping information',
              ),
              InfoSection(
                title: 'Information sharing',
                content: 'we collect information that you provide directly to us, including name, email address, and this shipping information',
              ),
              InfoSection(
                title: 'Data security',
                content: 'we collect information that you provide directly to us, including name, email address, and this shipping information',
              ),
              InfoSection(
                title: 'Your rights',
                content: 'we collect information that you provide directly to us, including name, email address, and this shipping information',
              ),
              InfoSection(
                title: 'Cookie policy',
                content: 'we collect information that you provide directly to us, including name, email address, and this shipping information',
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
