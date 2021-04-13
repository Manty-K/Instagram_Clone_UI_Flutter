import 'package:flutter/material.dart';
import 'widgets/explore_feed.dart';
import 'widgets/search_bar.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(),
            ExploreFeed(),
          ],
        ),
      ),
    );
  }
}
