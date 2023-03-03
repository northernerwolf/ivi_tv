import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget AboutMovi() {
  return Column(
    children: [
      Row(
        children: const [
          SizedBox(
            width: 350,
            child: Text(
              'wevh wvwv wv wkvkw vwkv w v w wkvkwk wkw vkwv wvkwvwv wv wv vwvwovewovwovwev bo wvwo vwvwv',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        children: const [
          SizedBox(
            width: 50,
            child: Text(
              'Akteri:',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(
              'Tom Cruse',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
      Row(
        children: const [
          SizedBox(
            width: 70,
            child: Text(
              'Rejissery:',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(
              'Tom Cruse',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 40,
      ),
      Row(
        children: const [
          SizedBox(
            width: 70,
            child: Text(
              'Treyler',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_up_sharp,
            color: Colors.white,
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
