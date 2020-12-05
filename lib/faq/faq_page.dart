import 'package:flutter/material.dart';
import 'package:flutter_devfest/create_venues/daily_profile.dart';
import 'package:flutter_devfest/clientProfile/my_profile.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';

import 'dart:math';

import 'package:flutter_devfest/home/index.dart';

import 'package:flutter_devfest/utils/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FaqPage extends StatelessWidget {
  static const String routeName = "/faq";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return DevScaffold(
      title: "Daily Update",
      body: DailyProfile(),
    );
  }
}
