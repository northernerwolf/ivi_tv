import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivi_tv/src/screens/tv/components/view_chanel.dart';

import '../../../../constants.dart';

class TvChanels extends StatelessWidget {
  TvChanels({super.key});

  List<String> image = ['assets/images/muz_tv.jpg', 'assets/images/russia.png'];
  List<String> chanal = ['Подиумы мира, 18+', 'Искусство моды, 16+'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.bg,
      body: SizedBox(
        height: 215,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                autofocus: true,
                focusColor: Colors.red,
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const ViewChanel(),
                    ),
                  );
                  print('pressed0000000000000000 $index');
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150,
                          width: 230,
                          child: Image.asset(image[index]),
                        ),
                        Container(
                          height: 1.5,
                          width: 230,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            chanal[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '16:48 Досуг, хобби',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 20),
          itemCount: 2,
        ),
      ),

      // ListView.builder(
      //   itemCount: 2,
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: (context, i) {
      //     return Shortcuts(
      //       shortcuts: <LogicalKeySet, Intent>{
      //         LogicalKeySet(LogicalKeyboardKey.select): const SelectIntent(),
      //       },
      //       // shortcuts: {
      //       //   LogicalKeySet(LogicalKeyboardKey.enter): SomeIntent(),
      //       // },
      //       child: Actions(
      //         actions: const {
      //           // SomeIntent: CallbackAction<SomeIntent>(
      //           //   // this will not launch if I manually focus on the item and press enter
      //           //   onInvoke: (intent) => print(
      //           //       'SomeIntent action was launched for item ${item.name}'),
      //           // )
      //         },
      //         child: InkWell(
      //           focusNode: FocusNode(),
      //           autofocus: true,
      //           focusColor: Colors.red,
      // child: Padding(
      //   padding: const EdgeInsets.only(right: 20),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       SizedBox(
      //         height: 150,
      //         width: 230,
      //         child: Image.asset(image[i]),
      //       ),
      //       Container(
      //         height: 1.5,
      //         width: 230,
      //         color: Colors.red,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 10),
      //         child: Text(
      //           chanal[i],
      //           style: const TextStyle(
      //               color: Colors.white,
      //               fontSize: 16,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.only(top: 5),
      //         child: Text(
      //           '16:48 Досуг, хобби',
      //           style: TextStyle(
      //               color: Colors.grey,
      //               fontSize: 14,
      //               fontWeight: FontWeight.normal),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
