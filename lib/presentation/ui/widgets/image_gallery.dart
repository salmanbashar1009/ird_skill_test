import 'package:flutter/material.dart';
import 'package:ird_skill_test/utils/path_holder.dart';

class ImageGallery extends StatelessWidget {
  ImageGallery({super.key});

  final List<String> imageUrls = [
    PathHoler.imageUrl("luxury-villa.jpg"),
    PathHoler.imageUrl("dream-villa.png"),
    PathHoler.imageUrl("luxury-villa.jpg"),
    PathHoler.imageUrl("modern-villa.jpg"),
    PathHoler.imageUrl("luxury-villa.jpg"),
    PathHoler.imageUrl("luxury-villa.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: double.infinity,
      child: Row(
        children: [
          for (int i = 0; i <  imageUrls.length; i++)
           i < 4 ? Container(
              width: 70,
              height: 70,
              // Adjust width as needed
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imageUrls[i]),
                  fit: BoxFit.cover,
                ),
              ),
              child: i == 4  - 1 && imageUrls.length > 3
                  ? Stack(
                   children: [
                     Container(
                       width: 70,
                       height: 70,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.black.withOpacity(0.3)
                       ),
                       child: Center(
                         child: Text(
                           '+${imageUrls.length - 3}',
                           style: const TextStyle(
                             fontSize: 24.0,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                     )
                   ],
                  )
                  : null,
            ) : const SizedBox(width: 0,)
        ],
      ),
    );
  }
}
