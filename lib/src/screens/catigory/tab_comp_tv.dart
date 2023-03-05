import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CompTabTv(String title) {
  return Tab(
    child: Text(
      title,
      style: const TextStyle(fontFamily: "BarlowBold", fontSize: 12),
    ),
  );
}
