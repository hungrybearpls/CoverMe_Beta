import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/notifications/notification_list.dart';

class ClubScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const ClubScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var state = homeBloc.currentState as InHomeState;
    // var notifications = state.venueData.post;
    // var clubSessions = notifications.where((s) => s.track == "club").toList();
    // return NotificationList(
    //   allPosts: clubSessions,
    // );
  }
}
