// ignore: depend_on_referenced_packages

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: AppConst.appColorBackg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CarouselSlider(
                items: generateImages(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  height: 400,
                  disableCenter: true,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                  Row(
                    children: [
                      CardMovies(
                          '12+',
                          'Три Богатыря',
                          'Подписка Иви',
                          Image.asset('assets/images/tri.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
