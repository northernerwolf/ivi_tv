import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../constants.dart';
import '../../../widget_companents/movi_view.dart';
import '../componets_catigory/card_janyr.dart';
import '../componets_catigory/card_movies.dart';

class CartunsScreen extends StatelessWidget {
  CartunsScreen({super.key});

  List<String> name = ['Три Богатыря', 'Богатыря'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.bg,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                'Мyльтфильмы-нoвинки',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 255,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Shortcuts(
                        shortcuts: <LogicalKeySet, Intent>{
                          LogicalKeySet(LogicalKeyboardKey.select):
                              const ActivateIntent(),
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            autofocus: true,
                            focusColor: Colors.red,
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const MoviViewScreen(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CardMovies(
                                  '12+',
                                  'Три Богатыря',
                                  'Подписка Иви',
                                  Image.asset('assets/images/tri.jpg',
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        )),
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: 5),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: const [
              Text(
                'Жанры',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
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
                          child: CardJanyrListCopm(
                              Icons.tv, 'Детские', Colors.red),
                        )),
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: 8),
          )
        ],
      ),
    );
  }
}
