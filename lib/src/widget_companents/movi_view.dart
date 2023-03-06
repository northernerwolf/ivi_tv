import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';
import 'package:ivi_tv/src/widget_companents/componets_widget/title_movi_comp.dart';

class MoviViewScreen extends StatefulWidget {
  const MoviViewScreen({super.key});

  @override
  State<MoviViewScreen> createState() => _MoviViewScreenState();
}

class _MoviViewScreenState extends State<MoviViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appColorBackg,
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/topgun.png',
              fit: BoxFit.cover,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: InkWell(
          //     onTap: () {
          //       Navigator.of(context).pop();
          //     },
          //     child: const Icon(
          //       Icons.arrow_back,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          TitleMovi(),
        ]),
      ),
    );
  }
}
