import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardMovies(String title, name, cost, Image image) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          SizedBox(
            height: 200,
            width: 155,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48),
                child: image,
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 123,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 180,
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
        padding: const EdgeInsets.only(top: 8, bottom: 5),
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
