import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardCanals(String title, name, cost, Image image) {
  return Column(
    children: [
      Stack(
        children: [
          SizedBox(
            height: 60,
            width: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48),
                child: image,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  width: 100,
                  height: 8,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 15,
          width: 100,
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
      SizedBox(
        height: 14,
        width: 100,
        child: Text(
          cost,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ),
    ],
  );
}
