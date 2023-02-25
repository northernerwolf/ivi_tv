import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MainProfilShape(Color color) {
  return SizedBox(
    height: 60,
    width: 140,
    child: Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(48),
        child: Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            SizedBox(
              height: 45,
              width: 45,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(8)),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(48),
                  child: const Icon(
                    Icons.person_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const SizedBox(
              child: Text(
                'Профиль',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
