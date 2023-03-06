import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

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
                  fontSize: 16,
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
  return SizedBox(
    height: 35,
    width: 45,
    child: Container(
      decoration: BoxDecoration(
          color: AppConst.moviCard, borderRadius: BorderRadius.circular(8)),
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
