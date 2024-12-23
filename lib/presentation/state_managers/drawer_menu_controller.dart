
import 'package:get/get.dart';

class DrawerMenuController extends GetxController{
  RxInt selectedIndex = 0.obs;

  void onTap(int index){
    selectedIndex.value = index;
  }
}