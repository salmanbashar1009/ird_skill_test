import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_skill_test/presentation/ui/screens/product_detals_screen.dart';
import 'package:ird_skill_test/utils/path_holder.dart';

class BestSectionListTile extends StatelessWidget {
  const BestSectionListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: (){
         Get.to(()=>  ProductDetalsScreen());
        },
        child: Card(
          color: Colors.white,
          elevation: 0,
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(PathHoler.imageUrl("luxury-villa.jpg")),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(width: 16,),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Orchad House",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text("Rp. 2.500.000.000 / Year",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.blue)),
                    const SizedBox(
                      height: 6,
                    ),
                    const Row(
                      children: [
                        Wrap(
                          children: [
                            Icon(
                              Icons.bed,
                              size: 22,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("6 Bedroom")
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Wrap(
                          children: [
                            Icon(
                              Icons.bathtub,
                              size: 22,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("4 Bathroom")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
