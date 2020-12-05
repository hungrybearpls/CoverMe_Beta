import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/notifications/notification_list.dart';

class RestaurantScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const RestaurantScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var notifications = state.venueData.post;
    var restaurantSessions =
        notifications.where((s) => s.track == "restaurant").toList();
    return NotificationList(
      allPosts: restaurantSessions,
    );
  }
}
