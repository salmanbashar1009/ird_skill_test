

import 'package:flutter/material.dart';

Container iconBackground(IconData icon, BoxShape shape, Color color) {
  return Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
        shape: shape,
        color: color,
        borderRadius:
        shape == BoxShape.rectangle ? BorderRadius.circular(8) : null),
    child: Icon(
      icon,
      size: 16,
      color: Colors.white,
    ),
  );
}