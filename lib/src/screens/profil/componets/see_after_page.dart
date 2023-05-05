import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../widget_companents/app_text_styles.dart';

class TVSeeAfterPage extends StatelessWidget {
  const TVSeeAfterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.bg,
      appBar: AppBar(
        title: Text(
          'Смотреть позже',
          style: getTextStyle(
            AppTextStyles.s32w700,
            color: AppConst.primaryWhite,
          ),
        ),
        backgroundColor: AppConst.bg,
        automaticallyImplyLeading: false,
        leading: InkWell(
          focusColor: Colors.red,
          autofocus: true,
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.arrow_uturn_left,
            color: AppConst.primaryWhite,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Здесь будут фильмы, которые вы решите посмотреть позже',
          style: getTextStyle(
            AppTextStyles.s20w700,
            color: AppConst.primaryWhite,
          ),
        ),
      ),
    );
  }
}
