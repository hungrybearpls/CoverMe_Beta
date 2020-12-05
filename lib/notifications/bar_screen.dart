import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/notifications/notification_list.dart';

class BarScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const BarScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var notifications = state.venueData.post;
    var barSessions = notifications.where((s) => s.track == "bar").toList();
    return NotificationList(
      allPosts: barSessions,
    );
  }
}
