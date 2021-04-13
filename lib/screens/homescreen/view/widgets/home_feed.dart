import 'package:flutter/material.dart';

import 'post.dart';

class HomeFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post('shubhamkoprekar07', 'https://picsum.photos/id/1025/200',
            'https://picsum.photos/id/1041/300/200', 23, 27),
        Post('official_aman.k', 'https://picsum.photos/id/1012/200',
            'https://picsum.photos/id/1070/300/200', 104, 131),
        Post('artofmiragestudios', 'https://picsum.photos/id/1025/200',
            'https://picsum.photos/id/1080/300/200', 206, 72),
        Post('krishna_gadekar', 'https://picsum.photos/id/1012/200',
            'https://picsum.photos/id/239/300/200', 1014, 5),
      ],
    );
  }
}
