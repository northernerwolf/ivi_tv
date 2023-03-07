import 'package:flutter/material.dart';

import '../catigory/componets_catigory/card_janyr.dart';
import 'componets/card_component.dart';
import 'componets/card_componets_2.dart';

class MyProfilUser extends StatefulWidget {
  const MyProfilUser({super.key});

  @override
  State<MyProfilUser> createState() => _MyProfilUserState();
}

class _MyProfilUserState extends State<MyProfilUser> {
  bool isColor = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardComponents(
              'Потписки',
              'Управлять',
              'Есть активные',
            ),
            const SizedBox(
              width: 20,
            ),
            CardComponets2('Счёт ivi', '0 T'),
            const SizedBox(
              width: 20,
            ),
            CardComponets2('Рекомендации ', 'Настроить')
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 110,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            CardJanyrListCopm(Icons.card_giftcard, 'Покуки'),
            const SizedBox(
              width: 20,
            ),
            CardJanyrListCopm(Icons.flag, 'Смотреть позже'),
            const SizedBox(
              width: 20,
            ),
            CardJanyrListCopm(Icons.history, 'Просмотры'),
            const SizedBox(
              width: 20,
            ),
            CardJanyrListCopm(Icons.settings, 'Активация сертификата'),
            const SizedBox(
              width: 20,
            ),
            CardJanyrListCopm(Icons.notification_important, 'Уведомления'),
            const SizedBox(
              width: 20,
            ),
            CardJanyrListCopm(Icons.money, 'Способы оплаты'),
          ]),
        )
        // Row(
        //   children: [
        //     CardJanyrListCopm(Icons.settings, 'Детские'),
        //   ],
        // ),
      ],
    );
  }
}
