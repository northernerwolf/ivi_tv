// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

import 'package:ivi_tv/src/screens/initial/components/button_initial.dart';
import 'package:ivi_tv/src/screens/initial/components/button_initial_search.dart';

import '../../components/ivi_loga_componets.dart';
import '../../components/main_profil_shape.dart';
import '../catigory/catigory.dart';
import '../myivi/my_ivi.dart';
import '../profil/profil.dart';
import '../search/search.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.settingsColorBacg,
      body: Stack(
        children: [
          Expanded(
              child: PageView(
            controller: pc,
            // ignore: sort_child_properties_last
            children: const [
              SearchScreen(),
              MyIviScreen(),
              CatigoryScreen(),
              ProfilScreen()
            ],
            onPageChanged: setPaginaActive,
          )),
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  IviLogoComponets(),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: ButtonInitialSearch(
                              Icons.search,
                              "Поиск",
                              paginaAtual == 0
                                  ? Colors.red
                                  : AppConst.buttonUnSelected),
                          onTap: () {
                            pc.animateToPage(0,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.ease);
                          },
                        ),
                        InkWell(
                          child: ButtonInitial(
                              "Мой Иви",
                              paginaAtual == 1
                                  ? Colors.red
                                  : AppConst.buttonUnSelected),
                          onTap: () {
                            pc.animateToPage(1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.ease);
                          },
                        ),
                        InkWell(
                          child: ButtonInitial(
                              "Каталог",
                              paginaAtual == 2
                                  ? Colors.red
                                  : AppConst.buttonUnSelected),
                          onTap: () {
                            pc.animateToPage(2,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.ease);
                          },
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    child: MainProfilShape(paginaAtual == 3
                        ? Colors.grey
                        : AppConst.buttonUnSelected),
                    onTap: () {
                      pc.animateToPage(3,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                    },
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
