import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/recent_activity_screen/view/widgets/activity.dart';

import 'widgets/recent_activity_app_bar.dart';

class RecentActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: activityList,
                  ),
                ),
              ],
            ),
          ),
          RecentActivityAppBar(),
        ],
      ),
    ));
  }
}

List<Activity> activityList = [
  Activity.like(
    userName: 'kamthe_pranav',
    userImageID: 22,
    activityImageID: 674,
  ),
  Activity.like(
    userName: 'indrani.s',
    userImageID: 65,
    activityImageID: 338,
  ),
  Activity.comment(
    userName: 'prayag_aru',
    userImageID: 1012,
    activityImageID: 212,
    comment: 'Amazing 🤩',
  ),
  Activity.tag(
    userName: 'tanmay_pardeshi',
    userImageID: 203,
    activityImageID: 3,
  ),
  Activity.likedComment(
    userImageID: 1027,
    userName: 'yaminiiiii77',
    activityImageID: 111,
    comment: '😍😍😍',
  ),
  Activity.mentionInComment(
    activityImageID: 1025,
    userImageID: 373,
    userName: '_kshitija_02_',
  ),
  Activity.like(
    userName: 'hritik_uttarkar',
    userImageID: 117,
    activityImageID: 3,
  ),
  Activity.like(
    userName: 'atharva__73',
    userImageID: 669,
    activityImageID: 338,
  ),
  Activity.comment(
    userName: 'khushabu_v_madhav',
    userImageID: 1011,
    activityImageID: 1012,
    comment: '🔥🔥🔥',
  ),
  Activity.tag(
    userName: 'snehal_306',
    userImageID: 550,
    activityImageID: 3,
  ),
  Activity.likedComment(
    userImageID: 1014,
    userName: 'supriyakadam_3108',
    activityImageID: 111,
    comment: '❤',
  ),
  Activity.mentionInComment(
    activityImageID: 1005,
    userImageID: 435,
    userName: 'shubhamkoprekar07',
  )
];
