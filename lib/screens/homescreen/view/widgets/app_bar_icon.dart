import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  AppBarIcon({this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.black,
      size: kIconSize,
    );
  }
}
