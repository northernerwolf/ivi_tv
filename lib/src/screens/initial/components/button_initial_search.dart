import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ButtonInitialSearch(IconData icon, String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 4, right: 4),
    child: Container(
        height: 45,
        width: 102,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            Icon(
              icon,
              color: Colors.white,
            ),
            Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        )),
  );
}
