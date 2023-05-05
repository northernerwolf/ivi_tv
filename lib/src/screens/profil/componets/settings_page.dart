import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../widget_companents/app_text_styles.dart';

class TVSettingsPage extends StatelessWidget {
  TVSettingsPage({Key? key}) : super(key: key);
  @override
  List<String> mainTexts = [
    'Качество видео в плеере',
    'Анимация интерфейса',
    'Уведомления',
    'Родительский контроль',
    'Поиск',
    'Экспериментальные настройки',
    'Выбор профиля',
    '',
  ];
  List<String> secondaryTexts = [
    'SD 540',
    'Отключить анимацию',
    'Настроить',
    'Установить',
    'Показывать контент 18+',
    'Экспериментальная настройка 22',
    'Показывать при старте',
    '',
  ];
  List<Widget> widgets = [
    const Icon(
      CupertinoIcons.chevron_down,
      color: AppConst.primaryWhite,
    ),
    CupertinoSwitch(
      value: false,
      onChanged: (value) {},
    ),
    const SizedBox(),
    const SizedBox(),
    CupertinoSwitch(
      value: false,
      onChanged: (value) {},
    ),
    const Icon(
      CupertinoIcons.chevron_down,
      color: AppConst.primaryWhite,
    ),
    CupertinoSwitch(
      value: false,
      onChanged: (value) {},
    ),
    const SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    List<Function> methods = [
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
    ];
    return Scaffold(
      backgroundColor: AppConst.bg,
      // appBar: TVAppBar(
      //   titleText: 'Настройки',
      //   backButtonMethod: () {
      //     Navigator.pop(context);
      //   },
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => _itemOfSettingsCard(
                    mainText: mainTexts[index],
                    secondaryText: secondaryTexts[index],
                    widget: widgets[index],
                    onPressed: methods[index],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => _itemOfSettingsCard(
                    mainText: mainTexts[index + 4],
                    secondaryText: secondaryTexts[index + 4],
                    widget: widgets[index + 4],
                    onPressed: methods[index + 4],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemOfSettingsCard(
      {required String mainText,
      required String secondaryText,
      required Widget widget,
      Function? onPressed}) {
    return Container(
      foregroundDecoration: BoxDecoration(
        color: mainText == ''
            ? AppConst.bg.withOpacity(1)
            : AppConst.oceanBlue.withOpacity(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              mainText,
              style: getTextStyle(
                AppTextStyles.s22w700,
                color: AppConst.primaryWhite,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            color: AppConst.oceanBlue,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  secondaryText,
                  style: getTextStyle(
                    AppTextStyles.s16w700,
                    color: AppConst.primaryWhite,
                  ),
                ),
                SizedBox(
                  height: 25,
                  child: widget,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
