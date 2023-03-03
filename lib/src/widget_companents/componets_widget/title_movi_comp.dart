import 'package:flutter/material.dart';
import 'package:ivi_tv/src/widget_companents/componets_widget/about_movi.dart';
import 'package:ivi_tv/src/widget_companents/componets_widget/movi_view_next.dart';

// ignore: non_constant_identifier_names
Widget TitleMovi() {
  return Padding(
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
              '-,- 2019,1 sezon, 6+',
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
              'Fransiya, Germanya, Dlya 16+',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 25,
              width: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)),
                child: SizedBox.fromSize(
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        child: Text(
                          'FullHD',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        AboutMovi(),
        Row(
          children: [
            MoviViewNext(),
            const SizedBox(
              width: 10,
            ),
            ButtonFavorite()
          ],
        )
      ],
    ),
  );
}
