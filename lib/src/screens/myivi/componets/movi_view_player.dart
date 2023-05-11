import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class MoviPlayer extends AppBar {
  MoviPlayer({super.key});

  @override
  State<MoviPlayer> createState() => _MoviPlayerState();
}

class _MoviPlayerState extends State<MoviPlayer> {
  late ChewieController _chewieController;
  late VideoPlayerController _videoPlayerController;
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

      // isLive: true,
      // allowedScreenSleep: true,
      // cupertinoProgressColors: ChewieProgressColors(
      //   playedColor: AppColors.primaryRed,
      //   backgroundColor: AppColors.priorityGreen,
      //   bufferedColor: AppColors.grey,
      //   handleColor: AppColors.priorityOrange,
      // ),
      // hideControlsTimer: Duration(seconds: 3),
      // placeholder: CupertinoActivityIndicator(),
      progressIndicatorDelay: const Duration(seconds: 3),
      // fullScreenByDefault: ,
      // controlsSafeAreaMinimum:
      // EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      // customControls: CupertinoControls(
      // backgroundColor: AppColors.,
      // iconColor: AppColors.priorityGreen,
      // showPlayButton: true,
      // ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
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
                                      Icons.skip_next,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: [
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
                                        Icons.settings,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Качество',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
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
                                          padding: EdgeInsets.only(left: 5),
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
                                        Icons.warning,
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
                  ],
                )
              ],
            ),
            TextButton(onPressed: () {}, child: const Text('data'))
          ],
        ),
      )),
    );
  }
}
