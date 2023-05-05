import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ivi_tv/src/screens/profil/componets/message_comp.dart';
import 'package:ivi_tv/src/screens/profil/componets/sign_out_comp.dart';
import 'package:ivi_tv/src/screens/profil/kids_profil.dart';
import 'package:ivi_tv/src/screens/profil/profi_user.dart';

import '../../../constants.dart';
import 'componets/account_components.dart';
import 'componets/account_components_add.dart';
import 'componets/sign_in.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaActive(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  var height = 72.0;
  var width = 50.0;
  var height1 = 72.0;
  var width1 = 50.0;

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Scaffold(
        backgroundColor: AppConst.bg,
        body: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              // ignore: void_checks
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: AppConst.oceanBlue.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
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
                            Shortcuts(
                              shortcuts: <LogicalKeySet, Intent>{
                                LogicalKeySet(LogicalKeyboardKey.select):
                                    const ActivateIntent(),
                              },
                              child: TextButton(
                                onPressed: () {
                                  pc.animateToPage(0,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.ease);
                                },
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.only(top: 5)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  )),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                      if (states
                                          .contains(MaterialState.focused)) {
                                        return Colors.red;
                                      }
                                      return Colors.transparent;
                                    },
                                  ),
                                ),
                                child: SizedBox(
                                  width: 45,
                                  child: AccountComp(
                                      'guwanch',
                                      Image.asset('assets/icons/ivilogo.png'),
                                      paginaAtual == 0
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Shortcuts(
                              shortcuts: <LogicalKeySet, Intent>{
                                LogicalKeySet(LogicalKeyboardKey.select):
                                    const ActivateIntent(),
                              },
                              child: TextButton(
                                onPressed: () {
                                  pc.animateToPage(1,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.ease);
                                },
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.only(top: 5)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  )),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                      if (states
                                          .contains(MaterialState.focused)) {
                                        return Colors.red;
                                      }
                                      return Colors.transparent;
                                    },
                                  ),
                                ),
                                child: AccountComp(
                                    'Дети',
                                    Image.asset('assets/images/tri.jpg',
                                        fit: BoxFit.cover),
                                    paginaAtual == 1
                                        ? FontWeight.bold
                                        : FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Shortcuts(
                              shortcuts: <LogicalKeySet, Intent>{
                                LogicalKeySet(LogicalKeyboardKey.select):
                                    const ActivateIntent(),
                              },
                              child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            const EdgeInsets.only(top: 5)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    )),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (states) {
                                        if (states
                                            .contains(MaterialState.focused)) {
                                          return Colors.red;
                                        }
                                        return Colors.transparent;
                                      },
                                    ),
                                  ),
                                  child: AccountCompAdd('Новый')),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Shortcuts(
                          shortcuts: <LogicalKeySet, Intent>{
                            LogicalKeySet(LogicalKeyboardKey.select):
                                const ActivateIntent(),
                          },
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                                    if (states
                                        .contains(MaterialState.focused)) {
                                      return Colors.red;
                                    }
                                    return AppConst.oceanBlue;
                                  },
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))),
                            child: SiginIn(
                              Icons.edit,
                              'Зарегистрироваться',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 240,
                child: PageView(
                  controller: pc,
                  onPageChanged: setPaginaActive,
                  children: const [
                    MyProfilUser(),
                    KidsProfil(),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FocusTraversalOrder(
                      order: const NumericFocusOrder(2.0),
                      child: Shortcuts(
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
                            child: MessageComponets(
                                Icons.message, 'Слыжа поддержки')),
                      )),
                  Row(
                    children: <Widget>[
                      Shortcuts(
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
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (states) {
                                  if (states.contains(MaterialState.focused)) {
                                    return Colors.red;
                                  }
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            child: UidComponets('uid: ', '948474474747')),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Shortcuts(
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
                            child: SignOutComp()),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
