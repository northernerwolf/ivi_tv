import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget SiginIn(IconData icon, String title) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    height: 30,
    width: 190,
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(48),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
