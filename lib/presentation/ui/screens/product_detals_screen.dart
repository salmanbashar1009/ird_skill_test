import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_skill_test/presentation/state_managers/product_details_controller.dart';
import 'package:ird_skill_test/presentation/ui/widgets/icon_background.dart';
import 'package:ird_skill_test/presentation/ui/widgets/image_gallery.dart';
import 'package:ird_skill_test/presentation/ui/widgets/product_details_card.dart';
import 'package:ird_skill_test/utils/path_holder.dart';

class ProductDetalsScreen extends StatelessWidget {
  ProductDetalsScreen({super.key});

  final ProductDetailsController controller =
      Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: ProductDetailsCard()),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Obx(
                  () => RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: controller.isExpanded.value == false
                              ? "It is a long established fact that a reader will be distracted by the readable content of a page when looking... "
                              : "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum...",
                          style: Theme.of(context).textTheme.titleSmall),
                      TextSpan(
                          text: controller.isExpanded.value == false
                              ? "Show more"
                              : "show less",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.lightBlueAccent),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              controller.onTap();
                            })
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ownerIntro(context),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Gallery",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                ImageGallery(),
                const SizedBox(
                  height: 20,
                ),
            
                // google map here
                
                const SizedBox(
                  height: 20,
                ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Rp. 2.500.000.000 / Year",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    rentNowButton(context),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row ownerIntro(BuildContext context) {
    return Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset(PathHoler.imageUrl("bsr.png")),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gary Allen",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "Owner",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  const Spacer(),
                  iconBackground(Icons.phone, BoxShape.rectangle,
                      const Color(0xFF0ABED9).withOpacity(0.5)),
                  const SizedBox(
                    width: 16,
                  ),
                  iconBackground(
                      Icons.chat_bubble_outline_rounded,
                      BoxShape.rectangle,
                      const Color(0xFF0ABED9).withOpacity(0.5)),
                ],
              );
  }

  Container rentNowButton(BuildContext context) {
    return Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFA0DAFB),
                                Color(0xFF0A8ED9),
                              ])),
                      child: Center(
                          child: Text(
                        "Rent Now",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                      )));
  }
}
