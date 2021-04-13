import 'package:flutter/material.dart';

import 'explore_tag.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 40,
                color: Colors.black12,
                child: TextField(
                  enabled: false,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.grey,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.add_box_outlined),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 40,
          color: Colors.white,
          child: ListView.builder(
            itemCount: tagList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return ExploreTag(tagName: tagList[index]);
            },
          ),
        )
      ],
    );
  }
}
