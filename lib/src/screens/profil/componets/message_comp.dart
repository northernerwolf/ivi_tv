import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MessageComponets(IconData icon, String title) {
  return SizedBox(
    height: 35,
    width: 250,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(8)),
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
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget UidComponets(String title, String integer) {
  return Row(
    children: [
      SizedBox(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
      SizedBox(
        child: Text(
          integer,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    ],
  );
}
