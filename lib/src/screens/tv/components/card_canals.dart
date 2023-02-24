import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardCanals(String title, name, cost, Image image) {
  return Column(
    children: [
      Stack(
        children: [
          SizedBox(
            height: 60,
            width: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48),
                child: image,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
      Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      Text(
        cost,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      ),
    ],
  );
}
