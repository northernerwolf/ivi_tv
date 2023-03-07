import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: AppConst.settingsColorBacg,
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
                          GestureDetector(
                            child: AnimatedContainer(
                              width: paginaAtual == 0 ? width = 55 : width = 50,
                              height:
                                  paginaAtual == 0 ? height = 77 : height = 72,
                              duration: const Duration(milliseconds: 200),
                              child: AccountComp(
                                  'guwanch',
                                  Image.asset('assets/icons/ivilogo.png'),
                                  paginaAtual == 0
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                            onTap: () {
                              pc.animateToPage(0,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.ease);
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
                            child: AnimatedContainer(
                              width:
                                  paginaAtual == 1 ? width1 = 55 : width1 = 50,
                              height: paginaAtual == 1
                                  ? height1 = 77
                                  : height1 = 72,
                              duration: const Duration(milliseconds: 200),
                              child: AccountComp(
                                  'Дети',
                                  Image.asset('assets/images/tri.jpg',
                                      fit: BoxFit.cover),
                                  paginaAtual == 1
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                            onTap: () {
                              pc.animateToPage(1,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.ease);
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
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 230,
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
              children: [
                MessageComponets(Icons.message, 'Слыжа поддержки'),
                Row(
                  children: [
                    UidComponets('uid: ', '948474474747'),
                    const SizedBox(
                      width: 10,
                    ),
                    SignOutComp()
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
    );
  }
}
