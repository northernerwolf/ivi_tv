import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/search/components/button_clean.dart';

import '../../../constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConst.settingsColorBacg,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
            child: Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 450,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              labelText: 'Enter Text',
                              fillColor: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ButtonClean('Очистить')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
