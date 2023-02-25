import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/profil/componets/sign_in.dart';

import 'account_components.dart';
import 'account_components_add.dart';

// ignore: non_constant_identifier_names
Widget ComponentsIn() {
  return Container(
    height: 100,
    color: Colors.grey[900],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const SizedBox(
              width: 80,
              child: Text(
                'Wybor Profil',
                maxLines: 2,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AccountComp('Guwanch'),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AccountCompAdd('Nowy'),
              ],
            )
          ],
        ),
        Row(
          children: [
            SiginIn(
              Icons.edit,
              'зарегистрироваться',
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ],
    ),
  );
}
