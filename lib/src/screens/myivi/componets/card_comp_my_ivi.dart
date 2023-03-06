import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

// ignore: non_constant_identifier_names
Widget CardCompMyIvi(Image image) {
  return Container(
    height: 110,
    width: 300,
    color: AppConst.moviCard,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: 140,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48),
                child: image,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              SizedBox(
                width: 100,
                child: Text(
                  'Артур и дети круг',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  'Серия 1 Сезон 1',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                child: Text(
                  '0 из 11 мин',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
