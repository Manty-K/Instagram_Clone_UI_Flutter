import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'widgets/video_player_widget.dart';
import 'widgets/reel_icon.dart';

class ReelsPage extends StatefulWidget {
  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  final asset = 'assets/pools.mp4';
  VideoPlayerController controller;
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..setVolume(0)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    print('Disposed');
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Container(
          color: Colors.black,
        ),
        VideoPlayerWidget(
          controller: controller,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Reels',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
              Spacer(),
              ReelIcon(Icons.favorite_outline_outlined, label: '12K'),
              ReelIcon(Icons.chat_bubble_outline, label: '394'),
              ReelIcon(Icons.call_made, label: ''),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/1011/200'),
                            fit: BoxFit.contain),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'shockolavawave',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Spending time with Myself ☺',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 30)
            ],
          ),
        )
      ]),
    );
  }
}
