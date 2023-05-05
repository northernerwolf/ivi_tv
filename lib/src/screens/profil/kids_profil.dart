import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivi_tv/src/screens/profil/componets/card_component_kids.dart';
import 'package:ivi_tv/src/screens/profil/componets/settings_page.dart';

import '../../../constants.dart';
import '../catigory/componets_catigory/card_janyr.dart';
import 'componets/card_componets_2.dart';
import 'componets/see_after_page.dart';

class KidsProfil extends StatelessWidget {
  const KidsProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(0)),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                onPressed: () {},
                child: CardComponentsKids(
                    'Потписки', 'Управлять', 'Есть активные')),
          ),
          const SizedBox(
            width: 10,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(0)),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (states) {
                    if (states.contains(MaterialState.focused)) {
                      return Colors.red;
                    }
                    return AppConst.oceanBlue;
                  },
                ),
              ),
              child: CardComponets2('Счёт ivi', '0 T'),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 110,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child: CardJanyrListCopm(
                    Icons.card_giftcard, 'Покуки', Colors.red)),
          ),
          const SizedBox(
            width: 9,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const TVSeeAfterPage(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child: CardJanyrListCopm(
                    CupertinoIcons.bookmark, 'Смотреть позже', Colors.red)),
          ),
          const SizedBox(
            width: 9,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child: CardJanyrListCopm(
                    CupertinoIcons.timer, 'Просмотры', Colors.red)),
          ),
          const SizedBox(
            width: 9,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child: CardJanyrListCopm(
                    CupertinoIcons.arrowtriangle_right_square,
                    'Активация сертификата',
                    Colors.red)),
          ),
          const SizedBox(
            width: 9,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child: CardJanyrListCopm(
                    CupertinoIcons.bell, 'Уведомления', Colors.red)),
          ),
          const SizedBox(
            width: 9,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child: CardJanyrListCopm(
                    CupertinoIcons.bitcoin, 'Способы оплаты', Colors.red)),
          ),
          const SizedBox(
            width: 9,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => TVSettingsPage(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child: CardJanyrListCopm(
                    CupertinoIcons.settings, 'Настройки', Colors.red)),
          ),
          const SizedBox(
            width: 9,
          ),
          Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.red;
                      }
                      return AppConst.oceanBlue;
                    },
                  ),
                ),
                child:
                    CardJanyrListCopm(CupertinoIcons.add, 'Add', Colors.red)),
          ),
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
