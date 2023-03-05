import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/catigory/catigort_tab/cartun.dart';
import 'package:ivi_tv/src/screens/catigory/catigort_tab/movies.dart';
import 'package:ivi_tv/src/screens/catigory/catigort_tab/tv_canals_catigory.dart';
import 'package:ivi_tv/src/screens/catigory/tab_comp_tv.dart';

import '../../../constants.dart';

class CatigoryScreen extends StatefulWidget {
  const CatigoryScreen({super.key});

  @override
  State<CatigoryScreen> createState() => _CatigoryScreenState();
}

class _CatigoryScreenState extends State<CatigoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.settingsColorBacg,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 50, right: 50),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 350,
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.grey,
                          indicatorColor: Colors.grey,
                          indicatorWeight: 2,
                          controller: tabController,
                          tabs: [
                            CompTabTv('Мyльтфильмы'),
                            CompTabTv('Фильмы'),
                            CompTabTv('ТВ-каналы'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  controller: tabController,
                  children: const [
                    CartunsScreen(),
                    MoviesScreen(),
                    TvCanalsCatigory()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
