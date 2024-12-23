import 'package:get/get.dart';

class ProductDetailsController extends GetxController{
  RxBool isExpanded = false.obs;

  void onTap(){
    isExpanded.value = !isExpanded.value;
    update();
  }
}