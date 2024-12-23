import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_skill_test/presentation/ui/screens/product_detals_screen.dart';
import 'package:ird_skill_test/utils/path_holder.dart';

class NearSectionCarouselCard extends StatelessWidget {
  const NearSectionCarouselCard({
    super.key,
    required this.imageName,
    required this.title,
    required this.description,
    required this.distance,
  });

  final String imageName;
  final String title;
  final String description;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>  ProductDetalsScreen());
      },
      child: Container(
        height: 270,
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(PathHoler.imageUrl(imageName)),
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
                          const Color(0xFF0D0D0D).withOpacity(0.2),
                          const Color(0xFF0D0D0D).withOpacity(0.4),
                          const Color(0xFF000000).withOpacity(0.8),
                        ]))),
            Positioned(
              top: 16,
              right: 16,
              child: Container(
                width: 75,
                height: 24,
                padding: EdgeInsets.symmetric(horizontal: 10,),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: Colors.white,
                    ),
                    Text("$distance km",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400))
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
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
