import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../../../../constants.dart';
import '../../catigory/componets_catigory/card_movies.dart';

class MoviPlayer extends AppBar {
  MoviPlayer({super.key});

  @override
  State<MoviPlayer> createState() => _MoviPlayerState();
}

class _MoviPlayerState extends State<MoviPlayer> {
  late ChewieController _chewieController;
  late VideoPlayerController _videoPlayerController;
  List<String> quality = ['1080p', '720p', '480p', '360p', '144p'];
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset(
      'assets/videos/intersteller.mp4',
      videoPlayerOptions: VideoPlayerOptions(
        allowBackgroundPlayback: true,
        mixWithOthers: true,
      ),
    );
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      allowFullScreen: true,
      autoPlay: false,
      autoInitialize: true,
      allowMuting: true,
      looping: true,
      showControls: false,
      showControlsOnInitialize: true,
      allowPlaybackSpeedChanging: true,
      maxScale: 2.5,
      showOptions: true,
      zoomAndPan: true,
      aspectRatio: 16 / 9,
      progressIndicatorDelay: const Duration(seconds: 3),
    );
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.bg,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: AspectRatio(
                    aspectRatio: _chewieController.aspectRatio!,
                    child: Chewie(
                      controller: _chewieController,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Shortcuts(
                            shortcuts: <LogicalKeySet, Intent>{
                              LogicalKeySet(LogicalKeyboardKey.select):
                                  const ActivateIntent(),
                            },
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  )),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.all(0)),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                      if (states
                                          .contains(MaterialState.focused)) {
                                        return Colors.red;
                                      }
                                      return Colors.transparent;
                                    },
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 22,
                                )),
                          ),
                          const Text(
                            'data',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 380),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Shortcuts(
                                shortcuts: <LogicalKeySet, Intent>{
                                  LogicalKeySet(LogicalKeyboardKey.select):
                                      const ActivateIntent(),
                                },
                                child: TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      )),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              const EdgeInsets.all(0)),
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.focused)) {
                                            return Colors.red;
                                          }
                                          return Colors.transparent;
                                        },
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.skip_previous,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                              ),
                              Shortcuts(
                                shortcuts: <LogicalKeySet, Intent>{
                                  LogicalKeySet(LogicalKeyboardKey.select):
                                      const ActivateIntent(),
                                },
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (_chewieController.isPlaying) {
                                          _chewieController.pause();
                                        } else {
                                          _chewieController.play();
                                        }
                                      });
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      )),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              const EdgeInsets.all(0)),
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.focused)) {
                                            return Colors.red;
                                          }
                                          return Colors.transparent;
                                        },
                                      ),
                                    ),
                                    child: Icon(
                                      _chewieController.isPlaying
                                          ? CupertinoIcons.pause
                                          : CupertinoIcons.play_arrow,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                              ),
                              // Shortcuts(
                              //   shortcuts: <LogicalKeySet, Intent>{
                              //     LogicalKeySet(LogicalKeyboardKey.select):
                              //         const ActivateIntent(),
                              //   },
                              //   child: TextButton(
                              //       onPressed: () {},
                              //       style: ButtonStyle(
                              //         shape: MaterialStateProperty.all<
                              //                 RoundedRectangleBorder>(
                              //             RoundedRectangleBorder(
                              //           borderRadius:
                              //               BorderRadius.circular(8.0),
                              //         )),
                              //         padding:
                              //             MaterialStateProperty.all<EdgeInsets>(
                              //                 const EdgeInsets.all(0)),
                              //         backgroundColor: MaterialStateProperty
                              //             .resolveWith<Color>(
                              //           (states) {
                              //             if (states.contains(
                              //                 MaterialState.focused)) {
                              //               return Colors.red;
                              //             }
                              //             return Colors.transparent;
                              //           },
                              //         ),
                              //       ),
                              //       child: const Icon(
                              //         Icons.skip_next,
                              //         color: Colors.white,
                              //         size: 20,
                              //       )),
                              // ),
                            ],
                          ),
                          Row(
                            children: [
                              Shortcuts(
                                shortcuts: <LogicalKeySet, Intent>{
                                  LogicalKeySet(LogicalKeyboardKey.select):
                                      const ActivateIntent(),
                                },
                                child: TextButton(
                                    onPressed: () {
                                      showMemberMenu();
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      )),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              const EdgeInsets.all(0)),
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.focused)) {
                                            return Colors.red;
                                          }
                                          return Colors.transparent;
                                        },
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.settings,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(
                                              'Качество',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 5),
                                child: TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      )),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              const EdgeInsets.all(0)),
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.focused)) {
                                            return Colors.red;
                                          }
                                          return Colors.transparent;
                                        },
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.volume_up,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            'Аудио и Субтитры',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    )),
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            const EdgeInsets.all(0)),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (states) {
                                        if (states
                                            .contains(MaterialState.focused)) {
                                          return Colors.red;
                                        }
                                        return Colors.transparent;
                                      },
                                    ),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.warning_amber_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: ValueListenableBuilder(
                              valueListenable: _videoPlayerController,
                              builder:
                                  (context, VideoPlayerValue value, child) {
                                var date = value.position.toString().split(":");
                                var hrs = date[0];
                                var mns = date[1];
                                var sds = date[2].split(".")[0];
                                return Text(
                                  "$hrs:$mns:$sds",
                                  style: const TextStyle(color: Colors.white),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                            child: VideoProgressIndicator(
                              _videoPlayerController,
                              allowScrubbing: true,
                              colors: const VideoProgressColors(
                                backgroundColor:
                                    Color.fromARGB(255, 240, 236, 236),
                                playedColor: Color.fromARGB(255, 249, 250, 250),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ValueListenableBuilder(
                              valueListenable: _videoPlayerController,
                              builder:
                                  (context, VideoPlayerValue value, child) {
                                var date = value.duration.toString().split(":");
                                var hrs = date[0];
                                var mns = date[1];
                                var sds = date[2].split(".")[0];
                                return Text(
                                  "$hrs:$mns:$sds",
                                  style: const TextStyle(color: Colors.white),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                        child: Shortcuts(
                      shortcuts: <LogicalKeySet, Intent>{
                        LogicalKeySet(LogicalKeyboardKey.select):
                            const ActivateIntent(),
                      },
                      child: TextButton(
                          onPressed: () {
                            showPopUp();
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(0)),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (states) {
                                if (states.contains(MaterialState.focused)) {
                                  return Colors.red;
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              children: const [
                                Text(
                                  'Похожее',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  CupertinoIcons.chevron_compact_down,
                                  size: 20,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )),
                    ))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }

  void showPopUp() {
    showCupertinoModalPopup(
      context: context,
      // semanticsDismissible: false,
      // barrierDismissible: false,
      // useRootNavigator: false,
      builder: (context) => Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: AppConst.bg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                color: AppConst.bg.withOpacity(0.3),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Shortcuts(
                      shortcuts: <LogicalKeySet, Intent>{
                        LogicalKeySet(LogicalKeyboardKey.select):
                            const ActivateIntent(),
                      },
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(0)),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (states) {
                              if (states.contains(MaterialState.focused)) {
                                return Colors.red;
                              }
                              return Colors.transparent;
                            },
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            children: const [
                              Icon(
                                CupertinoIcons.chevron_compact_up,
                                size: 20,
                                color: Colors.white,
                              ),
                              Text(
                                'Вернуться к просмотру',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    //   IconButton(
                    //   onPressed: () {
                    //     Navigator.pop(context);
                    //   },
                    //   icon: const Icon(
                    //     CupertinoIcons.chevron_compact_down,
                    //     color: AppConst.primaryWhite,
                    //   ),
                    // ),
                    ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'Похожее',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 255,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Shortcuts(
                            shortcuts: <LogicalKeySet, Intent>{
                              LogicalKeySet(LogicalKeyboardKey.select):
                                  const ActivateIntent(),
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  )),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.all(0)),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                                      if (states
                                          .contains(MaterialState.focused)) {
                                        return Colors.red;
                                      }
                                      return Colors.transparent;
                                    },
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CardMovies(
                                      '12+',
                                      'Три Богатыря',
                                      'Подписка Иви',
                                      Image.asset('assets/images/tri.jpg',
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showMemberMenu() async {
    // PopupMenuButton(itemBuilder: (context) {
    //   return List.generate(
    //       5,
    //       (index) => PopupMenuItem(
    //             value: index,
    //             child: Text(
    //               quality[index],
    //               style: const TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.bold,
    //                   fontFamily: 'Roboto',
    //                   color: Colors.white),
    //             ),
    //           ));
    // });
    await showMenu(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      color: AppConst.bg.withOpacity(1),
      context: context,
      position: const RelativeRect.fromLTRB(250, 240, 170, 40),
      items: [
        const PopupMenuItem(
          value: 1,
          child: SizedBox(
            width: 150,
            child: Text(
              "1080p",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white),
            ),
          ),
        ),
        const PopupMenuItem(
          value: 2,
          child: SizedBox(
            width: 150,
            child: Text(
              "720p",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white),
            ),
          ),
        ),
        const PopupMenuItem(
          value: 3,
          child: SizedBox(
            width: 150,
            child: Text(
              "480p",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white),
            ),
          ),
        ),
        const PopupMenuItem(
          value: 4,
          child: SizedBox(
            width: 150,
            child: Text(
              "360p",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white),
            ),
          ),
        ),
        const PopupMenuItem(
          value: 4,
          child: SizedBox(
            width: 150,
            child: Text(
              "240p",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white),
            ),
          ),
        ),
        const PopupMenuItem(
          value: 4,
          child: SizedBox(
            width: 150,
            child: Text(
              "144p",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white),
            ),
          ),
        ),
        const PopupMenuItem(
          value: 4,
          child: SizedBox(
            width: 150,
            child: Text(
              "Auto",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.white),
            ),
          ),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) print(value);
    });
  }
}
