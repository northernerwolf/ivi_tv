import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardMovies(String title, name, cost, Image image) {
  return Column(
    children: [
      Stack(
        children: [
          SizedBox(
            height: 140,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48),
                child: image,
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 70,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 15,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(4)),
                      child: SizedBox.fromSize(
                        // size: const Size.fromRadius(48),
                        child: Center(
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
          style: const TextStyle(color: Colors.red, fontSize: 10),
        ),
      ),
    ],
  );
}
