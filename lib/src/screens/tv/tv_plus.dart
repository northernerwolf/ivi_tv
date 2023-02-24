import 'package:flutter/material.dart';
import 'package:ivi_tv/src/screens/tv/tvtabs/children.dart';
import 'package:ivi_tv/src/screens/tv/tvtabs/docmetasion.dart';
import 'package:ivi_tv/src/screens/tv/tvtabs/entertaining.dart';
import 'package:ivi_tv/src/screens/tv/tvtabs/fitnes.dart';
import 'package:ivi_tv/src/screens/tv/tvtabs/sport.dart';
import 'package:ivi_tv/src/screens/tv/tvtabs/tv_canals.dart';

import '../../../constants.dart';

class TvPluseScreen extends StatefulWidget {
  const TvPluseScreen({super.key});

  @override
  State<TvPluseScreen> createState() => _TvPluseScreenState();
}

class _TvPluseScreenState extends State<TvPluseScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
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
      backgroundColor: AppConst.appColorBackg,
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
                        width: 600,
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.grey,
                          indicatorColor: Colors.grey,
                          indicatorWeight: 2,
                          controller: tabController,
                          tabs: const [
                            Tab(
                              child: Text(
                                "Katigorýalar",
                                style: TextStyle(
                                    fontFamily: "BarlowBold", fontSize: 12),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Brendler",
                                style: TextStyle(
                                    fontFamily: "BarlowBold", fontSize: 12),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Brendler",
                                style: TextStyle(
                                    fontFamily: "BarlowBold", fontSize: 12),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Brendler",
                                style: TextStyle(
                                    fontFamily: "BarlowBold", fontSize: 12),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Brendler",
                                style: TextStyle(
                                    fontFamily: "BarlowBold", fontSize: 12),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Brendler",
                                style: TextStyle(
                                    fontFamily: "BarlowBold", fontSize: 12),
                              ),
                            ),
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
                    TvCanals(),
                    Entertaining(),
                    ChildrenTab(),
                    SportsTab(),
                    FitnesTab(),
                    Docmentasiontab()
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
