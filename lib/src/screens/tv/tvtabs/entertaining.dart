import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

class Entertaining extends StatefulWidget {
  const Entertaining({super.key});

  @override
  State<Entertaining> createState() => _EntertainingState();
}

class _EntertainingState extends State<Entertaining> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConst.appColorBackg,
    );
  }
}
