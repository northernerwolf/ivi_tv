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
              'Все фильмы доступны для просмотра в онлайне, ничего скачивать не нужно. Видео оптимизировано для мобильных телефонов. При использовании рекомендуется подключиться к Wi-Fi',
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
            width: 60,
            child: Text(
              'Акери: ',
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
            width: 100,
            child: Text(
              'Режиссры:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(
              'Tom Cruse',
              style: TextStyle(fontSize: 18, color: Colors.white),
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
            width: 80,
            child: Text(
              'ТРЕЙЛЕР',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
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
