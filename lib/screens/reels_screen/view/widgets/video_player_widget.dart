import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller != null && controller.value.isInitialized) {
      return Container(alignment: Alignment.topCenter, child: buildVideo());
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  buildVideo() => buildVideoPlayer();

  buildVideoPlayer() => AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller));
}
