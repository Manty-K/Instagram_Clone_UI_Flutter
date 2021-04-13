import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';
import 'package:instagram_clone/screens/homescreen/view/widgets/app_bar_icon.dart';

class UserProfileBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
      height: 50,
      child: Row(
        children: [
          Text(
            'manty.k',
            style: TextStyle(
                fontSize: kUserNameTitleSize, fontWeight: FontWeight.bold),
          ),
          AppBarIcon(icon: Icons.keyboard_arrow_down, onPressed: null),
          Spacer(),
          AppBarIcon(
            icon: Icons.add_box_outlined,
            onPressed: null,
          ),
          SizedBox(width: 10),
          AppBarIcon(
            icon: Icons.menu,
            onPressed: null,
          )
        ],
      ),
    );
  }
}
