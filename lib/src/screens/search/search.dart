import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConst.appColorBackg,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
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
                ),
              ],
            ),
          ),
        ));
  }
}
