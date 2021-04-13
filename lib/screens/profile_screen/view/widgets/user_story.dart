import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';

class UserStory extends StatelessWidget {
  final int imageID;

  const UserStory(this.imageID);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: kUserStorySize + 10,
            width: kUserStorySize + 10,
            decoration: BoxDecoration(
              //color: Colors.pink,
              border: Border.all(color: Colors.black45),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: kUserStorySize,
            height: kUserStorySize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
              image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/id/$imageID/200'),
                  fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}
