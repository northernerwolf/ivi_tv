import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

// ignore: non_constant_identifier_names
Widget CardJanyrListCopm(IconData icon, String title) {
  return Container(
    height: 100,
    width: 126.2,
    color: AppConst.cardColorBacg,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.red[600],
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    ),
  );
}
