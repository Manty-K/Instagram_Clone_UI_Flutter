import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';

class Story extends StatelessWidget {
  final String imageURL;
  Story(this.imageURL);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: kStorySize + 10,
            width: kStorySize + 10,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.pink, Colors.orange],
              ),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: kStorySize + 5,
            width: kStorySize + 5,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: kStorySize,
            height: kStorySize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(imageURL), fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}
