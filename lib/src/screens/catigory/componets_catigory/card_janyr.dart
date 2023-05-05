import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardJanyrListCopm(IconData icon, String title, Color color) {
  return SizedBox(
    height: 100,
    width: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    ),
  );
}
