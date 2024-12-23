import 'package:flutter/material.dart';
import 'package:ird_skill_test/presentation/ui/widgets/best_section_list_tile.dart';



class BestSectionList extends StatelessWidget {
   BestSectionList({super.key});

  int items = 15;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:300,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items > 5 ? 5 : items,
        itemBuilder: (context , index){
          return  const BestSectionListTile();
        },
      ),
    );
  }
}




