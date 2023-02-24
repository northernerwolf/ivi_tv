import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

class SportsTab extends StatefulWidget {
  const SportsTab({super.key});

  @override
  State<SportsTab> createState() => _SportsTabState();
}

class _SportsTabState extends State<SportsTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConst.appColorBackg,
    );
  }
}
