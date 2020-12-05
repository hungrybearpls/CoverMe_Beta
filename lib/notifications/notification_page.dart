import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/notifications/bar_screen.dart';
import 'package:flutter_devfest/notifications/club_screen.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'restaurant_screen.dart';

class NotificationPage extends StatelessWidget {
  static const String routeName = "/notification";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return DefaultTabController(
      length: 3,
      child: DevScaffold(
        title: "Notifications",
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          labelStyle: TextStyle(
            fontSize: 12,
          ),
          isScrollable: false,
          tabs: <Widget>[
            Tab(
              child: Text("Bars"),
              icon: Icon(
                FontAwesomeIcons.cloud,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Clubs"),
              icon: Icon(
                FontAwesomeIcons.mobile,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Restaurants"),
              icon: Icon(
                FontAwesomeIcons.mobile,
                size: 12,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            BarScreen(
              homeBloc: _homeBloc,
            ),
            ClubScreen(
              homeBloc: _homeBloc,
            ),
            RestaurantScreen(
              homeBloc: _homeBloc,
            ),
          ],
        ),
      ),
    );
  }
}
