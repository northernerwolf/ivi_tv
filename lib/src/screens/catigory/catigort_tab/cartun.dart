import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/catigory/componets_catigory/card_movies.dart';
import 'package:ivi_tv/src/widget_companents/movi_view.dart';

import '../../../../constants.dart';
import '../componets_catigory/card_janyr.dart';

class CartunsScreen extends StatelessWidget {
  const CartunsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.settingsColorBacg,
      body: ListView(
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
            height: 250,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
            ]),
          ),
          // Row(
          //   children: [
          //     InkWell(
          //       onTap: () {
          //         Navigator.of(context).push(
          //           MaterialPageRoute(
          //             builder: (_) => const MoviViewScreen(),
          //           ),
          //         );
          //       },
          //       child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
          //           Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
          //     ),
          //   ],
          // ),
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
            child: ListView(scrollDirection: Axis.horizontal, children: [
              CardJanyrListCopm(Icons.tv, 'Детские'),
              const SizedBox(
                width: 20,
              ),
              CardJanyrListCopm(Icons.card_giftcard, 'Детские'),
              const SizedBox(
                width: 20,
              ),
              CardJanyrListCopm(Icons.settings, 'Детские'),
              const SizedBox(
                width: 20,
              ),
              CardJanyrListCopm(Icons.move_down, 'Детские'),
              const SizedBox(
                width: 20,
              ),
              CardJanyrListCopm(Icons.shop, 'Детские'),
              const SizedBox(
                width: 20,
              ),
              CardJanyrListCopm(Icons.tv, 'Детские'),
            ]),
          ),
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
            height: 250,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoviViewScreen(),
                    ),
                  );
                },
                child: CardMovies('12+', 'Три Богатыря', 'Подписка Иви',
                    Image.asset('assets/images/tri.jpg', fit: BoxFit.cover)),
              ),
            ]),
          ),

          // Row(
          //   children: [
          //     CardJanyrListCopm(Icons.tv, 'Детские'),
          //   ],
          // )
        ],
      ),
    );
  }
}
