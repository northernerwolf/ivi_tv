// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appColorBackg,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 80,
                  ),
                  SizedBox(
                    height: 60,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48),
                        child: Image.asset('assets/icons/ivilogo.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 300,
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
