import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget AccountCompAdd(String title) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        height: 45,
        width: 45,
        child: const Icon(
          Icons.add,
          color: Colors.white,
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
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal),
        ),
      )
    ],
  );
}
