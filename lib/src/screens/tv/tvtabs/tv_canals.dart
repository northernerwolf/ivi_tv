import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/tv/components/card_canals.dart';

import '../../../../constants.dart';

class TvCanals extends StatefulWidget {
  const TvCanals({super.key});

  @override
  State<TvCanals> createState() => _TvCanalsState();
}

class _TvCanalsState extends State<TvCanals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appColorBackg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                'Federalny kanal',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CardCanals('Федеральные каналы 16+', 'Первый канал', 'Бесплатно',
                  Image.asset('assets/images/russia.png', fit: BoxFit.cover)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: const [
              Text(
                'Razwlekatelnye kanaly',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CardCanals(
                  'классика “Comedy Club” и “Comedy Woman”, “Comedy Баттл” 16+',
                  'Первый канал',
                  'Бесплатно',
                  Image.asset('assets/images/main_tnt4.png',
                      fit: BoxFit.cover)),
            ],
          ),
        ],
      ),
    );
  }
}
