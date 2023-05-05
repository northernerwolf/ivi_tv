import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivi_tv/src/screens/catigory/catigort_tab/movies.dart';

import '../../../constants.dart';
import '../tv/components/tab_componets.dart';
import 'catigort_tab/cartun.dart';

class CatigoryScreen extends StatefulWidget {
  const CatigoryScreen({super.key});

  @override
  State<CatigoryScreen> createState() => _CatigoryScreenState();
}

class _CatigoryScreenState extends State<CatigoryScreen>
    with SingleTickerProviderStateMixin {
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

    return Scaffold(
      backgroundColor: AppConst.bg,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 50, right: 50),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                              if (states.contains(MaterialState.focused)) {
                                return Colors.red;
                              }
                              return Colors.transparent;
                            },
                          ),
                        ),
                        child: ButtonTvChanalTab(
                          'Фильмы',
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
                              if (states.contains(MaterialState.focused)) {
                                return Colors.red;
                              }
                              return Colors.transparent;
                            },
                          ),
                        ),
                        child: ButtonTvChanalTab(
                          'Мyльтфильмы',
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                    width: size.width,
                    height: size.height,
                    child: PageView(
                      controller: pc,
                      // ignore: sort_child_properties_last
                      children: [const MoviesScreen(), CartunsScreen()],
                      onPageChanged: setPaginaActive,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
  // child: CompTabTv('Мyльтфильмы')),
  //                           CompTabTv('Фильмы'),
  //                           CompTabTv('ТВ-каналы'),