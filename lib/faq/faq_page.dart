import 'package:flutter/material.dart';
import 'package:flutter_devfest/create_venues/daily_profile.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/universal/page_scaffold.dart';

class DailyPage extends StatelessWidget {
  static const String routeName = "/daily";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return PageScaffold(
      title: "Daily Update",
      body: DailyProfile(),
    );
  }
}
