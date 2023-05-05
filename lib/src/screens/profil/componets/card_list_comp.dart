import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardListComp(IconData icon, String title) {
  return Container(
    height: 100,
    width: 100,
    color: Colors.grey[800],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        SizedBox(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    ),
  );
}
