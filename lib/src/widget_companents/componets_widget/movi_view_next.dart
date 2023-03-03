import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MoviViewNext() {
  return SizedBox(
    height: 45,
    width: 200,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(8)),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(48),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 10),
              child: Row(
                children: const [
                  SizedBox(
                    child: Text(
                      'Prodoljit prosmoter',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 10),
              child: Row(
                children: const [
                  SizedBox(
                    child: Text(
                      'Seiya 1 Sezon 1',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget ButtonFavorite() {
  return SizedBox(
    height: 45,
    width: 50,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(8)),
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
  );
}
