import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/profile_screen/view/widgets/user_tagged_posts.dart';
import 'widgets/edit_profile_button.dart';
import 'widgets/profile_tab_bar.dart';
import 'widgets/user_igtv_posts.dart';
import 'widgets/user_info_panel.dart';
import 'widgets/user_posts.dart';
import 'widgets/user_profile_bar.dart';
import 'widgets/user_saved_stories.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              UserProfileBar(),
              UserInfoPanel(),
              EditProfileButton(),
              UserSavedStories(),
              ProfileTabBar(),
              Expanded(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overScroll) {
                    overScroll.disallowGlow();
                    return;
                  },
                  child: TabBarView(
                    children: [
                      UserPosts(),
                      UserIGTVPosts(),
                      UserTaggedPosts(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
