import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants.dart';
import 'components/tab_componets.dart';
import 'components/tv_chanels.dart';
import 'components/tv_chanels_kids.dart';

class AlemTvScreen extends StatefulWidget {
  const AlemTvScreen({super.key});

  @override
  State<AlemTvScreen> createState() => _AlemTvScreenState();
}

class _AlemTvScreenState extends State<AlemTvScreen>
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
        child: SingleChildScrollView(
          child: Column(children: [
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
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          if (states.contains(MaterialState.focused)) {
                            return Colors.red;
                          }
                          return Colors.transparent;
                        },
                      ),
                    ),
                    child: ButtonTvChanalTab(
                      "Развлекательные",
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
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          if (states.contains(MaterialState.focused)) {
                            return Colors.red;
                          }
                          return Colors.transparent;
                        },
                      ),
                    ),
                    child: ButtonTvChanalTab(
                      "Детские",
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
                  children: [
                    TvChanels(),
                    const TvChanalsKids(),
                  ],
                  onPageChanged: setPaginaActive,
                )),
          ]),
        ),
      ),
    );
  }
}
