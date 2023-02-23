// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';
import 'package:ivi_tv/src/components/components_mouse.dart';

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
                    height: 50,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48),
                        child: Image.asset('assets/icons/ivilogo.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            // boxShadow: const [
                            //   BoxShadow(
                            //       blurRadius: 3,
                            //       spreadRadius: 5,
                            //       color: Colors.grey)
                            // ]
                          ),
                          child: buttonsUI(),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48),
                        child: Image.asset('assets/icons/ivilogo.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  buttonsUI() {
    return Row(
      children: List.generate(3, (int i) {
        return MainButton(index: i, title: 'ddd');
      }),
    );
  }
}
