import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration:  InputDecoration(
                prefixIcon: const Icon(Icons.search,color: Color(0xFF858585),size: 24,),
                hintText: "Search address, or near you ",
                hintStyle: Theme.of(context).textTheme.titleSmall
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: InkWell(
            radius: 20,
            onTap: (){},
            child: Container(
              width: 55,
              height: 55,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFADDAFB),
                        Color(0xFF0ABED9),
                      ]
                  )
              ),
              child: const Icon(Icons.filter_list,size:30,color: Colors.white,),),
          ),
        ),
      ],
    );
  }
}