// ignore: depend_on_referenced_packages

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/myivi/componets/card_comp_my_ivi.dart';

import '../../../constants.dart';
import '../catigory/componets_catigory/card_movies.dart';

class MyIviScreen extends StatefulWidget {
  const MyIviScreen({super.key});

  @override
  State<MyIviScreen> createState() => _MyIviScreenState();
}

class _MyIviScreenState extends State<MyIviScreen> {
  int current = 0;
  List imageList = [
    'assets/images/topgun.png',
    'assets/images/russia.png',
    'assets/images/topguna.png',
    'assets/images/topgunc.png',
  ];

  List<Widget> generateImages() {
    return imageList
        .map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                e,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.settingsColorBacg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CarouselSlider(
                items: generateImages(),
                options: CarouselOptions(
                  padEnds: true,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  height: 400,
                  disableCenter: true,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 50, right: 50),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Самое интересное',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 110,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      CardCompMyIvi(Image.asset('assets/images/topgun.png',
                          fit: BoxFit.cover)),
                      const SizedBox(
                        width: 20,
                      ),
                      CardCompMyIvi(Image.asset('assets/images/topgun.png',
                          fit: BoxFit.cover)),
                      const SizedBox(
                        width: 20,
                      ),
                      CardCompMyIvi(Image.asset('assets/images/topgun.png',
                          fit: BoxFit.cover))
                    ]),
                  ),
                  // Row(
                  //   children: [
                  // CardCompMyIvi(Image.asset('assets/images/topgun.png',
                  //     fit: BoxFit.cover))
                  //   ],
                  // ),
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
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      CardMovies(
                          '12+',
                          'Три Богатыря',
                          'Подписка Иви',
                          Image.asset('assets/images/tri.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 20,
                      ),
                      CardMovies(
                          '12+',
                          'Три Богатыря',
                          'Подписка Иви',
                          Image.asset('assets/images/tri.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 20,
                      ),
                      CardMovies(
                          '12+',
                          'Три Богатыря',
                          'Подписка Иви',
                          Image.asset('assets/images/tri.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 20,
                      ),
                      CardMovies(
                          '12+',
                          'Три Богатыря',
                          'Подписка Иви',
                          Image.asset('assets/images/tri.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 20,
                      ),
                      CardMovies(
                          '12+',
                          'Три Богатыря',
                          'Подписка Иви',
                          Image.asset('assets/images/tri.jpg',
                              fit: BoxFit.cover)),
                    ]),
                  )
                  // Row(
                  //   children: [
                  //     CardMovies(
                  //         '12+',
                  //         'Три Богатыря',
                  //         'Подписка Иви',
                  //         Image.asset('assets/images/tri.jpg',
                  //             fit: BoxFit.cover)),
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
