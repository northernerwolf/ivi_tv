import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

class ChildrenTab extends StatefulWidget {
  const ChildrenTab({super.key});

  @override
  State<ChildrenTab> createState() => _ChildrenTabState();
}

class _ChildrenTabState extends State<ChildrenTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConst.appColorBackg,
    );
  }
}
