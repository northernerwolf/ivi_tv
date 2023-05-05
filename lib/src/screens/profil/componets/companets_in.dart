import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';
import 'package:ivi_tv/src/screens/profil/componets/sign_in.dart';

import 'account_components.dart';
import 'account_components_add.dart';

// ignore: non_constant_identifier_names
Widget ComponentsIn(InkWell page1, page2) {
  return Container(
    height: 100,
    color: AppConst.addAccount,
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
                'Выбор профиля',
                maxLines: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: AccountComp('guwanch',
                      Image.asset('assets/icons/ivilogo.png'), FontWeight.bold),
                  onTap: () {
                    page1;
                  },
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: AccountComp(
                      'Дети',
                      Image.asset('assets/images/tri.jpg', fit: BoxFit.cover),
                      FontWeight.bold),
                  onTap: () {
                    page2;
                  },
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AccountCompAdd('Новый'),
              ],
            )
          ],
        ),
        Row(
          children: [
            SiginIn(
              Icons.edit,
              'Зарегистрироваться',
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
