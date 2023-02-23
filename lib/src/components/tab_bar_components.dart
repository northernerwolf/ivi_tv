import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget TabBarComponents(String title) {
  return Tab(
    child: Text(
      title,
      style: const TextStyle(fontFamily: "BarlowBold", fontSize: 10),
    ),
  );
}
