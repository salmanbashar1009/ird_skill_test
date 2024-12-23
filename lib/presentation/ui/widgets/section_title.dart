import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "See more",
              style: Theme.of(context).textTheme.titleSmall,
            ))
      ],
    );
  }
}