import 'package:flutter/material.dart';
import 'package:ivi_tv/src/components/ivi_loga_componets.dart';
import 'package:ivi_tv/src/screens/catigory/catigory.dart';
import 'package:ivi_tv/src/screens/myivi/my_ivi.dart';
import 'package:ivi_tv/src/screens/profil/profil.dart';
import 'package:ivi_tv/src/screens/search/search.dart';
import 'package:ivi_tv/src/screens/tv/tv_plus.dart';

import '../../../constants.dart';

import '../../components/tab_bar_components.dart';

class InitialPageNew extends StatefulWidget {
  const InitialPageNew({super.key});

  @override
  State<InitialPageNew> createState() => _InitialPageNewState();
}

class _InitialPageNewState extends State<InitialPageNew>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appColorBackg,
      body: Stack(
        children: [
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              controller: tabController,
              children: const [
                SearchScreen(),
                MyIviScreen(),
                CatigoryScreen(),
                TvPluseScreen()
              ],
            ),
          ),
          SizedBox(
            height: 57,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  IviLogoComponets(),
                  const Spacer(),
                  Container(
                    // height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        TabBar(
                          unselectedLabelColor: Colors.white,
                          labelColor: Colors.white,
                          indicatorColor: Colors.red,
                          indicatorWeight: 1,
                          indicator: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          controller: tabController,
                          tabs: [
                            TabBarComponents("Поиск"),
                            TabBarComponents("Мой Иви"),
                            TabBarComponents("Каталог"),
                            TabBarComponents("TV+"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    // child: MainProfilShape(),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProfilScreen()));
                    },
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
