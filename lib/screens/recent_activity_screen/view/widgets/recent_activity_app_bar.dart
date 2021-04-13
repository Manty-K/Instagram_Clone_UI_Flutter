import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';

class RecentActivityAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
      height: 50,
      alignment: Alignment.centerLeft,
      width: double.infinity,
      child: Text(
        'Activity',
        style: TextStyle(
            fontSize: kUserNameTitleSize, fontWeight: FontWeight.bold),
      ),
    );
  }
}
