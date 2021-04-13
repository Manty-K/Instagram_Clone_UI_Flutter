import 'package:flutter/material.dart';

import 'add_user_story_button.dart';
import 'user_story.dart';

class UserSavedStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            UserStory(1022),
            UserStory(1031),
            UserStory(1026),
            UserStory(1029),
            UserStory(1033),
            UserStory(1045),
            AddUserStoryButton(),
          ],
        ),
      ),
    );
  }
}
