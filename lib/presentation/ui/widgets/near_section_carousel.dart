import 'package:flutter/cupertino.dart';
import 'package:ird_skill_test/presentation/ui/widgets/near_section_carousel_card.dart';

class NearSectionCarousel extends StatelessWidget {
  const NearSectionCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: NearSectionCarouselCard(
                imageName: "dream-villa.png",
                title: "Ascort House",
                description: "Jl. Sultan Iskandar Muda",
                distance: "2.5"),
          );
        },
      ),
    );
  }
}
