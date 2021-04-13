import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';
import 'package:instagram_clone/screens/homescreen/view/widgets/app_bar_icon.dart';

class AddUserStoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: kUserStorySize + 10,
        width: kUserStorySize + 10,
        decoration: BoxDecoration(
          //color: Colors.pink,
          border: Border.all(color: Colors.black45),
          shape: BoxShape.circle,
        ),
        child: AppBarIcon(icon: Icons.add, onPressed: null),
      ),
    );
  }
}
