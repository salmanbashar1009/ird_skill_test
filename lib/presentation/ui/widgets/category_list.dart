import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_skill_test/presentation/state_managers/categoryController.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    super.key,
  });

  List<String> catergories = [
    "Howse",
    "Apartment",
    "Hotel",
    "Villa",
    "Restaurant"
  ];

  final CategoryController controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catergories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Obx(
              () => InkWell(
                onTap: () => controller.onTap(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: controller.selectedIndex.value == index
                              ? [
                                  const Color(0xFFADDAFB),
                                  const Color(0xFF0ABED9),
                                ]
                              : [
                                  const Color(0xFFF7F7F7).withOpacity(0.7),
                                const Color(0xFFF7F7F7).withOpacity(0.7),
                          ],)),
                  child: Center(
                    child: Text(catergories[index],
                        style: TextStyle(fontSize: 12,
                            color: controller.selectedIndex.value == index
                                ? Colors.white
                                : Colors.grey)),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
