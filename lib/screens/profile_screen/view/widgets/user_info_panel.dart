import 'package:flutter/material.dart';
import 'package:instagram_clone/app_sizes.dart';
import 'numeric_info_item.dart';

class UserInfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: kStorySize,
                height: kStorySize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/id/447/200'),
                      fit: BoxFit.contain),
                ),
              ),
              Spacer(),
              NumericInfoItem('Posts', 57),
              Spacer(),
              NumericInfoItem('Followers', 647),
              Spacer(),
              NumericInfoItem('Following', 846),
              Spacer(),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Manthan Khandale',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Flutter Developer | Musician'),
          Text('www.manthankhandale.com', style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
