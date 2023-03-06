import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget AccountComp(String title, Image image, Color color) {
  return Column(
    children: [
      SizedBox(
        height: 50,
        width: 50,
        child: image,
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        width: 50,
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: color),
        ),
      )
    ],
  );
}
