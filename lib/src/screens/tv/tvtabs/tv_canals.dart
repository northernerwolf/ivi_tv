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
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Federalny kanal',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          CardCanals('ghgjg', 'bbbb', 'fff',
              Image.asset('assets/icons/ivilogo.png', fit: BoxFit.cover)),
        ],
      ),
    );
  }
}
