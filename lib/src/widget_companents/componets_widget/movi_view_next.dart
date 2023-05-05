import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MoviViewNext() {
  return SizedBox(
    height: 35,
    width: 110,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(8)),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(48),
        child: const Center(
          child: SizedBox(
            child: Text(
              textAlign: TextAlign.center,
              'Смотреть',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget ButtonFavorite() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: SizedBox(
        height: 35,
        width: 45,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
