import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ButtonClean(String title) {
  return SizedBox(
    height: 25,
    width: 110,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(8)),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(48),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
