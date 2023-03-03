import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardCompMyIvi(Image image) {
  return Container(
    height: 100,
    width: 250,
    color: Colors.grey[500],
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            width: 110,
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
                width: 80,
                child: Text(
                  'Bla Bla bla wevnowvwovevpb ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  'Serya 1 sezon 1',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 80,
                child: Text(
                  '0 iz 11 min',
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
