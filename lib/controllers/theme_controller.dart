import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

//extends GetxController to manage theme state
class ThemeController extends GetxController {
  //create the local storage and the save the data in the local storage
  final _box = GetStorage();
  final _key = 'isDarkMode';

  //based on the storage value decide the dart mode or light mode
  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
  bool get isDarkMode => _loadTheme(); //decide dark mode or light mode

 // read of the isDarkMode value from local storage
  bool _loadTheme() => _box.read(_key) ?? false;

  //save the selected theme mode to local storage
  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  //change the theme and save the selected theme to local storage and update the UI
  void toggleTheme() {
    Future.delayed(const Duration(milliseconds: 50), () {
      Get.changeThemeMode(_loadTheme() ? ThemeMode.light : ThemeMode.dark);
      saveTheme(!_loadTheme());
      update();
    });
  }
}
