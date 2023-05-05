import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardComponets2(String title, title1) {
  return Container(
    height: 90,
    width: 275,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                title1,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
