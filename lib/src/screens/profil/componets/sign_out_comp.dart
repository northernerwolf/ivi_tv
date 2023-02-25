import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget SignOutComp() {
  return SizedBox(
    height: 35,
    width: 100,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(8)),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(48),
        child: Row(
          children: const [
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              child: Text(
                'Whode',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
