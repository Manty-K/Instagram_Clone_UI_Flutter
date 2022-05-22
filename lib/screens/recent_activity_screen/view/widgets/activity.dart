import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Activity extends StatelessWidget {
  String currentUserName;
  final int userImageID;
  final String userName;
  final int activityImageID;
  final String activityText;
  String comment;

  Activity.like(
      {Key key, this.userImageID, this.userName, this.activityImageID})
      : activityText = ' liked your photo.';
  Activity.comment(
      {Key key,
      this.userImageID,
      this.userName,
      this.activityImageID,
      this.comment})
      : activityText = comment == null
            ? ' commented on your post.'
            : ' commented: $comment';

  Activity.tag({Key key, this.userImageID, this.userName, this.activityImageID})
      : activityText = ' tagged you in a post.';

  Activity.likedComment(
      {Key key,
      this.userImageID,
      this.userName,
      this.activityImageID,
      this.comment})
      : activityText = comment == null
            ? ' liked your comment.'
            : ' liked your comment: $comment';
  Activity.mentionInComment({
    Key key,
    this.userImageID,
    this.userName,
    this.activityImageID,
  }) : activityText = ' mentioned your in comment.';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image:
                      NetworkImage("https://picsum.photos/id/$userImageID/200"),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$userName',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              '$activityText',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.black12,
            child:
                Image.network('https://picsum.photos/id/$activityImageID/200'),
          )
        ],
      ),
    );
  }
}
