import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/profil/componets/card_component_kids.dart';

import '../catigory/componets_catigory/card_janyr.dart';
import 'componets/card_componets_2.dart';

class KidsProfil extends StatelessWidget {
  const KidsProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardComponentsKids('Потписки', 'Управлять', 'Есть активные'),
          const SizedBox(
            width: 20,
          ),
          CardComponets2('Счёт ivi', '0 T')
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
          CardJanyrListCopm(Icons.settings, 'Смотреть позже'),
          const SizedBox(
            width: 20,
          ),
          CardJanyrListCopm(Icons.history, 'Просмотры'),
          const SizedBox(
            width: 20,
          ),
          CardJanyrListCopm(Icons.cabin, 'Активация сертификата'),
          const SizedBox(
            width: 20,
          ),
          CardJanyrListCopm(Icons.favorite, 'Уведомления'),
          const SizedBox(
            width: 20,
          ),
          CardJanyrListCopm(Icons.library_add, 'Способы оплаты'),
        ]),
      )
      // Row(
      //   children: [
      //     CardJanyrListCopm(Icons.settings, 'Детские'),
      //   ],
      // ),
    ]);
  }
}
