import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:ivi_tv/constants.dart';
import 'package:ivi_tv/src/widget_companents/componets_widget/title_movi_comp.dart';
import 'package:video_player/video_player.dart';

class MoviViewScreen extends StatefulWidget {
  const MoviViewScreen({super.key});

  @override
  State<MoviViewScreen> createState() => _MoviViewScreenState();
}

class _MoviViewScreenState extends State<MoviViewScreen> {
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
      looping: false,
      showControls: false,
      showControlsOnInitialize: false,
      allowPlaybackSpeedChanging: true,
      maxScale: 2.5,
      showOptions: false,
      zoomAndPan: false,
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
      backgroundColor: AppConst.appColorBackg,
      body: SingleChildScrollView(
        child: Stack(children: [
          Center(
            child: AspectRatio(
              aspectRatio: _chewieController.aspectRatio!,
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
          // SizedBox(
          //   width: double.infinity,
          //   child: Image.asset(
          //     'assets/images/inter.jpeg',
          //     fit: BoxFit.cover,
          //   ),
          // ),

          const TitleMovi(),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              )),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.red;
                  }
                  return Colors.transparent;
                },
              ),
            ),
            autofocus: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
