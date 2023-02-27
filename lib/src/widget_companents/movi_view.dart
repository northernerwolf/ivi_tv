import 'package:flutter/material.dart';

class MoviViewScreen extends StatefulWidget {
  const MoviViewScreen({super.key});

  @override
  State<MoviViewScreen> createState() => _MoviViewScreenState();
}

class _MoviViewScreenState extends State<MoviViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/topgun.png',
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 40),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Мyльтфильмы-нoвинки',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      '-,- 2019,1 sezon, 6+',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'Fransiya, Germanya, Dlya detey',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
