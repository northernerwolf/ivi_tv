import 'package:flutter/material.dart';

import 'package:ivi_tv/src/screens/profil/componets/card_list_comp.dart';
import 'package:ivi_tv/src/screens/profil/componets/companets_in.dart';
import 'package:ivi_tv/src/screens/profil/componets/message_comp.dart';
import 'package:ivi_tv/src/screens/profil/componets/sign_out_comp.dart';

import '../../../constants.dart';
import 'componets/card_component.dart';
import 'componets/card_componets_2.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appColorBackg,
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 110,
            ),
            ComponentsIn(),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardComponents('fdeff', 'fefefefe'),
                const SizedBox(
                  width: 20,
                ),
                CardComponets2('vefeee', 'fefeffefe')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [CardListComp(Icons.tv, 'bwgowgwbguog')],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MessageComponets(Icons.message, 'rvwbwobbpwe'),
                Row(
                  children: [
                    UidComponets('uid: ', '948474474747'),
                    const SizedBox(
                      width: 10,
                    ),
                    SignOutComp()
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
