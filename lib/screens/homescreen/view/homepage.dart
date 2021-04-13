import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';

import 'widgets/home_feed.dart';
import 'widgets/my_app_bar.dart';
import 'widgets/stories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: MyBottomNavigationBar(),
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overScroll) {
                overScroll.disallowGlow();
                return;
              },
              child: ListView(
                children: [
                  Container(
                    height: 50,
                  ),
                  Stories(),
                  HomeFeed(),
                ],
              ),
            ),
            MyAppBar(),
          ],
        ),
      ),
    );
  }
}
