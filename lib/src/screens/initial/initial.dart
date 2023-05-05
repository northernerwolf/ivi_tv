// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivi_tv/constants.dart';

import 'package:ivi_tv/src/screens/initial/components/button_initial.dart';
import 'package:ivi_tv/src/screens/initial/components/button_initial_search.dart';

import '../../components/ivi_loga_componets.dart';
import '../../components/main_profil_shape.dart';
import '../catigory/catigory.dart';
import '../myivi/my_ivi.dart';
import '../profil/profil.dart';
import '../search/search.dart';
import '../tv/alem_tv.dart';

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
    final size = MediaQuery.of(context).size;
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Scaffold(
        backgroundColor: AppConst.settingsColorBacg,
        body: Stack(
          children: [
            SizedBox(
                width: size.width,
                height: size.height,
                child: PageView(
                  controller: pc,
                  // ignore: sort_child_properties_last
                  children: const [
                    SearchScreen(),
                    MyIviScreen(),
                    CatigoryScreen(),
                    AlemTvScreen(),
                    ProfilScreen(),
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
                      width: 440,
                      decoration: BoxDecoration(
                        color: AppConst.oceanBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Shortcuts(
                            shortcuts: <LogicalKeySet, Intent>{
                              LogicalKeySet(LogicalKeyboardKey.select):
                                  const ActivateIntent(),
                            },
                            child: TextButton(
                              onPressed: () {
                                pc.animateToPage(0,
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.ease);
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(0)),
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
                              ),
                              child: ButtonInitialSearch(
                                Icons.search,
                                "Поиск",
                              ),
                            ),
                          ),
                          Shortcuts(
                            shortcuts: <LogicalKeySet, Intent>{
                              LogicalKeySet(LogicalKeyboardKey.select):
                                  const ActivateIntent(),
                            },
                            child: TextButton(
                              onPressed: () {
                                pc.animateToPage(1,
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.ease);
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(0)),
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
                              ),
                              child: ButtonInitial(
                                "Мой Иви",
                              ),
                            ),
                          ),
                          Shortcuts(
                            shortcuts: <LogicalKeySet, Intent>{
                              LogicalKeySet(LogicalKeyboardKey.select):
                                  const ActivateIntent(),
                            },
                            child: TextButton(
                              onPressed: () {
                                pc.animateToPage(2,
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.ease);
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(0)),
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
                              ),
                              child: ButtonInitial(
                                "Каталог",
                              ),
                            ),
                          ),
                          Shortcuts(
                            shortcuts: <LogicalKeySet, Intent>{
                              LogicalKeySet(LogicalKeyboardKey.select):
                                  const ActivateIntent(),
                            },
                            child: TextButton(
                              onPressed: () {
                                pc.animateToPage(3,
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.ease);
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(0)),
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
                              ),
                              child: ButtonInitial(
                                "Алем TV",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Shortcuts(
                      shortcuts: <LogicalKeySet, Intent>{
                        LogicalKeySet(LogicalKeyboardKey.select):
                            const ActivateIntent(),
                      },
                      child: TextButton(
                        style: ButtonStyle(
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
                        onPressed: () {
                          pc.animateToPage(4,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.ease);
                        },
                        child: MainProfilShape(),
                      ),
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
      ),
    );
  }
}
