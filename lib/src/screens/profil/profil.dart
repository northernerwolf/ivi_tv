import 'package:flutter/material.dart';

import 'package:ivi_tv/src/screens/profil/componets/companets_in.dart';
import 'package:ivi_tv/src/screens/profil/componets/message_comp.dart';
import 'package:ivi_tv/src/screens/profil/componets/sign_out_comp.dart';

import '../../../constants.dart';
import '../catigory/componets_catigory/card_janyr.dart';
import 'componets/card_component.dart';
import 'componets/card_componets_2.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

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
                CardComponents('Потписки', 'укмуумтху', 'Есть активные'),
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
              children: [
                CardJanyrListCopm(Icons.settings, 'Детские'),
              ],
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
