import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoestore/controllers/auth_controllers.dart';
import 'package:shoestore/controllers/navigation_controller.dart';
import 'package:shoestore/controllers/theme_controller.dart';
import 'package:shoestore/view/splash_screen.dart';
import 'utils/app_themes.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  Get.put(AuthController());
  Get.put(NavigationController());
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoe Fashion Store',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: themeController.theme,
      defaultTransition: Transition.fade,
      home: SplashScreen(),
    );
  }
}
