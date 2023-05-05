import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget AccountComp(String title, Image image, FontWeight size) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          height: 45,
          width: 45,
          child: image,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        width: 50,
        child: Text(
          title,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: size),
        ),
      )
    ],
  );
}
