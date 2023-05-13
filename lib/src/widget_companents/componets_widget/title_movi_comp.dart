import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivi_tv/constants.dart';
import 'package:ivi_tv/src/screens/myivi/componets/movi_view_player.dart';
import 'package:ivi_tv/src/widget_companents/componets_widget/about_movi.dart';
import 'package:ivi_tv/src/widget_companents/componets_widget/movi_view_next.dart';

// ignore: non_constant_identifier_names
class TitleMovi extends StatelessWidget {
  late ChewieController chewieController;
  TitleMovi({required this.chewieController, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26.withOpacity(0.5),
      height: MediaQuery.of(context).size.height,
      // decoration: const BoxDecoration(
      // gradient: LinearGradient(
      //     colors: [Colors.grey, Colors.green],
      //     begin: FractionalOffset(0.0, 0.0),
      //     end: FractionalOffset(0.5, 0.0),
      //     stops: [0.0, 1.0],
      //     tileMode: TileMode.clamp),
      // ),
      child: Padding(
        padding: const EdgeInsets.only(left: 50, top: 40),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Мyльтфильмы-нoвинки',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  '-,- 2019,1 сезон, 6+',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'США, Франсия, Для 16+',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(
                  width: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: SizedBox(
                      height: 25,
                      width: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: SizedBox.fromSize(
                          child: const Center(
                            child: Text(
                              'FullHD',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '5.1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AboutMovi(),
            Row(
              children: [
                Shortcuts(
                  shortcuts: <LogicalKeySet, Intent>{
                    LogicalKeySet(LogicalKeyboardKey.select):
                        const ActivateIntent(),
                  },
                  child: TextButton(
                      onPressed: () {
                        if (chewieController.isPlaying) {
                          chewieController.pause();
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MoviPlayer(),
                            ));
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
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
                      child: MoviViewNext()),
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
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
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
                      child: ButtonFavorite()),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
