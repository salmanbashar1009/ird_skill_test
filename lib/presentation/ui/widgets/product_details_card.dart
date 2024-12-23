import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_skill_test/presentation/ui/widgets/icon_background.dart';
import 'package:ird_skill_test/utils/path_holder.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            image: AssetImage(PathHoler.imageUrl("luxury-villa.jpg")),
            fit: BoxFit.cover),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              width: 220,
              height: 270,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF0D0D0D).withOpacity(0.0),
                        const Color(0xFF0D0D0D).withOpacity(0.0),
                        const Color(0xFF0D0D0D).withOpacity(0.4),
                        const Color(0xFF000000).withOpacity(0.8),
                      ]))),
          Positioned(
            top: 16,
            right: 10,
            child: SizedBox(
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: iconBackground(Icons.arrow_back_ios_new, BoxShape.circle,
                        Colors.black.withOpacity(0.25)),
                  ),
                  iconBackground(Icons.bookmark_outline, BoxShape.circle,
                      Colors.black.withOpacity(0.25)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dreamsville House",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
                Text(
                  "Jl. Sultan Iskandar Muda, Jakarta selatan",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        iconBackground(Icons.bed, BoxShape.rectangle,
                            Colors.white.withOpacity(0.25)),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "6 Bedroom",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: const Color(0xFFD4D4D4)),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        iconBackground(Icons.bathtub, BoxShape.rectangle,
                            Colors.white.withOpacity(0.25)),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "4 Bathroom",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: const Color(0xFFD4D4D4)),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }


}
