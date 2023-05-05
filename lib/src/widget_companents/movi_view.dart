import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';
import 'package:ivi_tv/src/widget_companents/componets_widget/title_movi_comp.dart';

class MoviViewScreen extends StatelessWidget {
  const MoviViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appColorBackg,
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/inter.jpeg',
              fit: BoxFit.cover,
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
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              )),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.red;
                  }
                  return Colors.transparent;
                },
              ),
            ),
            autofocus: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
