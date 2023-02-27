import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/catigory/componets_catigory/card_movies.dart';
import 'package:ivi_tv/src/widget_companents/movi_view.dart';

import '../../../../constants.dart';
import '../componets_catigory/card_janyr.dart';

class CartunsScreen extends StatefulWidget {
  const CartunsScreen({super.key});

  @override
  State<CartunsScreen> createState() => _CartunsScreenState();
}

class _CartunsScreenState extends State<CartunsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appColorBackg,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            Row(
              children: [
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
              ],
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
            Row(
              children: [
                CardJanyrListCopm(Icons.tv, 'Детские'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
