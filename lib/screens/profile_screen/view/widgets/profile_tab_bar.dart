import 'package:flutter/material.dart';

class ProfileTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          tabs: [
            Tab(
              icon: Icon(Icons.grid_on),
            ),
            Tab(
              icon: Icon(Icons.live_tv),
            ),
            Tab(
              icon: Icon(Icons.person_pin_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
