import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/initial/initial_new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: InitialPageNew());
  }
}
