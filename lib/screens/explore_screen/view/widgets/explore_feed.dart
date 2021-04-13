import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 3,
          itemCount: imageURLIndexList.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black12,
              child: Image.network(
                'https://picsum.photos/id/${imageURLIndexList[index]}/200/300',
                fit: BoxFit.cover,
              ),
            );
          },
          staggeredTileBuilder: (index) {
            if (index % 10 == 0) {
              return StaggeredTile.count(2, 2);
            } else {
              return StaggeredTile.count(1, 1);
            }
          },
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
      ),
    );
  }
}

List imageURLIndexList = [
  1028,
  1026,
  1033,
  1042,
  1043,
  1041,
  1050,
  1048,
  1052,
  1054,
  106,
  1063,
  1065,
  1069,
  107,
  1072,
  1070,
  1043,
  1074,
  1075,
  1077,
  1078,
  1079,
  1080,
  1083,
  111,
];
