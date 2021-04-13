import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserIGTVPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 3,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black12,
          child: Image.network(
            'https://picsum.photos/id/${index + 70}/200/300',
            fit: BoxFit.cover,
          ),
        );
      },
      staggeredTileBuilder: (index) {
        return StaggeredTile.count(1, 2);
      },
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
    );
  }
}
