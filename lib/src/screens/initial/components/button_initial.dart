import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ButtonInitial(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 4, right: 4),
    child: Container(
        height: 45,
        width: 102,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        )),
  );
}
