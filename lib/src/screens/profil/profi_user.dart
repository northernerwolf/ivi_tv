import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivi_tv/constants.dart';

import '../catigory/componets_catigory/card_janyr.dart';
import 'componets/card_component.dart';
import 'componets/card_componets_2.dart';
import 'componets/subscription_page.dart';

class MyProfilUser extends StatefulWidget {
  const MyProfilUser({super.key});

  @override
  State<MyProfilUser> createState() => _MyProfilUserState();
}

class _MyProfilUserState extends State<MyProfilUser> {
  bool isColor = false;

  List<String> name = [
    'Покуки',
    'Смотреть позже',
    'Просмотры',
    'Активация сертификата',
    'Уведомления',
    'Способы оплаты',
    'Настройки',
    'Add',
  ];

  List<IconData> icon = [
    Icons.card_giftcard,
    CupertinoIcons.bookmark,
    CupertinoIcons.timer,
    CupertinoIcons.arrowtriangle_right_square,
    CupertinoIcons.bell,
    CupertinoIcons.bitcoin,
    CupertinoIcons.settings,
    CupertinoIcons.add,
  ];

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
            height: 24,
          ),
          SizedBox(
            height: 110,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Shortcuts(
                        shortcuts: <LogicalKeySet, Intent>{
                          LogicalKeySet(LogicalKeyboardKey.select):
                              const ActivateIntent(),
                        },
                        child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(0)),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (states) {
                                  if (states.contains(MaterialState.focused)) {
                                    return Colors.red;
                                  }
                                  return AppConst.oceanBlue;
                                },
                              ),
                            ),
                            child: CardJanyrListCopm(icon[index], name[index],
                                isColor ? Colors.white : Colors.red))),
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: name.length),
          ),
        ],
      ),
    );
  }
}
