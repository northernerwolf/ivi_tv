import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardComponents(String title, title1, title2) {
  return Container(
    height: 100,
    width: 600,
    color: Colors.grey[800],
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    title2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                title1,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
