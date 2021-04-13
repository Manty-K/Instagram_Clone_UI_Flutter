import 'package:flutter/material.dart';

import 'story.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Story('https://picsum.photos/id/1005/200'),
          Story('https://picsum.photos/id/1010/200'),
          Story('https://picsum.photos/id/1011/200'),
          Story('https://picsum.photos/id/101/200'),
          Story('https://picsum.photos/id/1019/200'),
          Story('https://picsum.photos/id/104/200'),
        ],
      ),
    );
  }
}
