import 'package:get/get.dart';

class NavigationController extends GetxController {
  //Rxint is a reactive integer variable to hold the current index of the navigation bar
  RxInt currentIndex = 0.obs;

  //when the user taps on a navigation item, this method updates the current index / change current index
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
