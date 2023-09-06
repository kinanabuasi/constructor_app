/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class WelcomeController extends GetxController {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/welcome-video.mp4")
          ..addListener(() {})
          ..setLooping(true)
          ..initialize().then((value) => videoPlayerController.play());
  }

  Future<void> initializePlayer() async {
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/welcome-video.mp4");

    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
      autoInitialize: true,
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      aspectRatio: 1,
      fullScreenByDefault: true,
      showControls: false,
      allowFullScreen: true,
    );
    update();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    videoPlayerController.dispose();
  }
}
*/