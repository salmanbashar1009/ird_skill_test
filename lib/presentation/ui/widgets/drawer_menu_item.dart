import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_skill_test/presentation/state_managers/drawer_menu_controller.dart';




class DrawerMenuItem extends StatelessWidget {
  DrawerMenuItem({
    super.key,
    required this.index,
    required this.title,
    required this.icon,
  });

  int index;
  String title;
  IconData icon;

  final DrawerMenuController controller = Get.put(DrawerMenuController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () => controller.onTap(index),
        child: Container(
          width: 165,
          height: 45,
          decoration: BoxDecoration(
              color: controller.selectedIndex.value == index
                  ? Colors.white
                  : Colors.transparent,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 35,
                  height: 35,
                  child: Icon(
                    icon,
                    size: 24,
                    color: controller.selectedIndex.value == index
                        ? const Color(0xFF2196F3)
                        : Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: controller.selectedIndex.value == index
                          ? const Color(0xFF2196F3)
                          : Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
