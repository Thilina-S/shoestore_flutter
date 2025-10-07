import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/utils/app_textstyles.dart';
import 'package:shoestore/view/edit%20profile/widgets/profile_form.dart';
import 'package:shoestore/view/edit%20profile/widgets/profile_image.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Edit Profile',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            profileImage(),
            SizedBox(height: 32),
            ProfileForm(),
          ],
        ),
      ),
    );
  }
}
