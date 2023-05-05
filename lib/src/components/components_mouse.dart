import 'dart:math';

import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  final int index;
  final String title;
  const MainButton({super.key, required this.index, required this.title});

  // MainButton({super.key, required this.index, required this.title})
  @override
  State<MainButton> createState() =>
      // ignore: no_logic_in_create_state
      _MainButtonState(index: index, title: title);
}

class _MainButtonState extends State<MainButton> {
  final int index;
  final String title;
  _MainButtonState({required this.index, required this.title});

  final Color _color =
      Colors.primaries[Random.secure().nextInt(Colors.primaries.length)];

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (f) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (f) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.only(
              topRight: (isHover || index == 0)
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              topLeft: (isHover || index == 0)
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              bottomLeft: (isHover || index == 0)
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              bottomRight: (isHover || index == 0)
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
            )),
        duration: const Duration(microseconds: 200),
        // color: _color,
        width: 100,
        height: isHover ? 90 : 60,
      ),
    );
  }
}
