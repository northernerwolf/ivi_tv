import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

// ignore: non_constant_identifier_names
Widget SiginIn(IconData icon, String title) {
  return SizedBox(
    height: 50,
    width: 200,
    child: Container(
      decoration: BoxDecoration(
          color: AppConst.cardColorBacg,
          borderRadius: BorderRadius.circular(8)),
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
