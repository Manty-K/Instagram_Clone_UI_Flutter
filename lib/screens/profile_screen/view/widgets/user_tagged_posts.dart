import 'package:flutter/material.dart';

class UserTaggedPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
            padding: EdgeInsets.all(1),
            color: Colors.white,
            child: Image.network('https://picsum.photos/id/${index + 50}/200'));
      },
      itemCount: 15,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    );
  }
}
