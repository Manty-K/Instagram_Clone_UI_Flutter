import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';

import 'app_bar_icon.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      height: 50,
      child: Row(
        children: [
          AppBarIcon(icon: Icons.add, onPressed: null),
          Spacer(),
          Text(
            'Instagram',
            style: TextStyle(
                fontSize: kAppTitleTextSize, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          AppBarIcon(
            icon: Icons.message,
            onPressed: null,
          )
        ],
      ),
    );
  }
}
