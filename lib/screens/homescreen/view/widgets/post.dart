import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';

class Post extends StatelessWidget {
  final String username;
  final String userImageURL;
  final String imageURL;
  final int likesCount;
  final int noOfComments;

  const Post(this.username, this.userImageURL, this.imageURL, this.likesCount,
      this.noOfComments);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('$userImageURL'),
                        fit: BoxFit.contain),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$username',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Image.network(
            '$imageURL',
            fit: BoxFit.fitHeight,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.white,
            //height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      size: kIconSize,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.chat_bubble_outline,
                      size: kIconSize,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.call_made,
                      size: kIconSize,
                    ),
                    Spacer(),
                    Icon(
                      Icons.save_alt,
                      size: kIconSize,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Text(
                        '$likesCount likes',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Text(
                  'View all $noOfComments comments',
                  style: TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
