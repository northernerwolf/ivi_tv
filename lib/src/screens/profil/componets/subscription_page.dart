import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';

import '../../../widget_companents/app_text_styles.dart';

class TVSubscriptionPage extends StatelessWidget {
  const TVSubscriptionPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.bg,
      // appBar: TVAppBar(
      //   titleText: 'Подписки',
      //   backButtonMethod: () {
      //     Navigator.pop(context);
      //   },
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 30, 75, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Активные',
                  style: getTextStyle(
                    AppTextStyles.s26w700,
                    color: AppConst.primaryWhite,
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => _subscribedCards(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 30),
                    itemCount: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        IconButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              // semanticsDismissible: false,
              // barrierDismissible: false,
              // useRootNavigator: false,
              builder: (context) => Material(
                child: Container(
                  height: 150,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: AppConst.bg,
                  ),
                  child: Stack(
                    children: [
//  pppppppoiuytrertyuioiugfdfghjklkjhgfdfghjk,lkjhgfdxsdfghnbvcdftghjnbvcdfghjnbv
                      Positioned(
                        // bottom: -100,
                        left: 0,
                        right: 0,
                        top: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(75, 15, 75, 0),
                              child: Text(
                                'Другие',
                                style: getTextStyle(
                                  AppTextStyles.s26w700,
                                  color: AppConst.primaryWhite,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 250,
                              child: Stack(
                                children: [
                                  ListView.separated(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 75, vertical: 20),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) =>
                                        _subscribedCards(),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(width: 30),
                                    itemCount: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 40,
                          color: AppConst.bg.withOpacity(0.3),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                CupertinoIcons.chevron_compact_down,
                                color: AppConst.primaryWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          icon: const Icon(
            CupertinoIcons.chevron_compact_up,
            color: AppConst.primaryWhite,
          ),
        ),
      ],
    );
  }

  Widget _subscribedCards() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      height: double.infinity,
      width: 300,
      decoration: const BoxDecoration(
        color: AppConst.oceanBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ivi',
                style: getTextStyle(
                  AppTextStyles.s26w700,
                  color: AppConst.primaryWhite,
                ),
              ),
              const SizedBox(
                height: 50,
                width: 70,
                // child: AppLogo(),
              ),
            ],
          ),
          Text(
            'истекает 29 мая',
            style: getTextStyle(
              AppTextStyles.s12w700,
              color: AppConst.priorityOrange,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Управлять',
                style: getTextStyle(
                  AppTextStyles.s12w700,
                  color: AppConst.primaryWhite,
                ),
              ),
              const Icon(
                CupertinoIcons.chevron_right,
                color: AppConst.primaryWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
