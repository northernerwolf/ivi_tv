import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget IviLogoComponets() {
  return SizedBox(
    height: 60,
    width: 70,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(48),
        child: Image.asset('assets/icons/ivilogo.png', fit: BoxFit.cover),
      ),
    ),
  );
}
