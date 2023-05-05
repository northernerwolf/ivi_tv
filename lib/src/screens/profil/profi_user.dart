import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivi_tv/constants.dart';

import '../catigory/componets_catigory/card_janyr.dart';
import 'componets/card_component.dart';
import 'componets/card_componets_2.dart';
import 'componets/see_after_page.dart';
import 'componets/settings_page.dart';
import 'componets/subscription_page.dart';

class MyProfilUser extends StatefulWidget {
  const MyProfilUser({super.key});

  @override
  State<MyProfilUser> createState() => _MyProfilUserState();
}

class _MyProfilUserState extends State<MyProfilUser> {
  bool isColor = false;

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
                },
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const TVSubscriptionPage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
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
                  child: CardComponents(
                    'Потписки',
                    'Управлять',
                    'Есть активные',
                  ),
                ),
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
                },
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
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
                    child: CardComponets2(
                      'Счёт ivi',
                      '0 〒',
                    )),
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
                },
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
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
                    child: CardComponets2('Рекомендации ', 'Настроить')),
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
                },
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
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
                    child: CardJanyrListCopm(Icons.card_giftcard, 'Покуки',
                        isColor ? Colors.white : Colors.red)),
              ),
              const SizedBox(
                width: 9,
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
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
                        CupertinoIcons.bookmark,
                        'Смотреть позже',
                        isColor == true ? Colors.white : Colors.red)),
              ),
              const SizedBox(
                width: 9,
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
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
                    child: CardJanyrListCopm(CupertinoIcons.timer, 'Просмотры',
                        isColor == true ? Colors.white : Colors.red)),
              ),
              const SizedBox(
                width: 9,
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
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
                        isColor == true ? Colors.white : Colors.red)),
              ),
              const SizedBox(
                width: 9,
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
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
                    child: CardJanyrListCopm(CupertinoIcons.bell, 'Уведомления',
                        isColor == true ? Colors.white : Colors.red)),
              ),
              const SizedBox(
                width: 9,
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
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
                        CupertinoIcons.bitcoin,
                        'Способы оплаты',
                        isColor == true ? Colors.white : Colors.red)),
              ),
              const SizedBox(
                width: 9,
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
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
                        CupertinoIcons.settings,
                        'Настройки',
                        isColor == true ? Colors.white : Colors.red)),
              ),
              const SizedBox(
                width: 9,
              ),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
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
                    child: CardJanyrListCopm(CupertinoIcons.add, 'Add',
                        isColor == true ? Colors.white : Colors.red)),
              ),
            ]),
          )
          // Row(
          //   children: [
          //     CardJanyrListCopm(Icons.settings, 'Детские'),
          //   ],
          // ),
        ],
      ),
    );
  }
}
