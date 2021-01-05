import 'package:flutter/material.dart';
import 'package:flutter_devfest/create_venues/daily_profile.dart';
import 'package:flutter_devfest/create_venues/send_post.dart';
import 'package:flutter_devfest/faq/faq_page.dart';
import 'package:flutter_devfest/home/home_widgets/home_front.dart';
import 'package:flutter_devfest/notifications/notification_page.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/venue_pages/userProfile/userProfileScreen.dart';
import 'package:share/share.dart';
import '';

class DevScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;

  DevScaffold({Key key, @required this.body, @required this.title, this.tabBar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            bottom: tabBar != null ? tabBar : null,
            actions: <Widget>[
              IconButton(
                onPressed: () => Share.share(
                    "Download the new DevFest App and share with your tech friends.\nPlayStore -  http://bit.ly/2GDr18N"),
                icon: Icon(
                  Icons.share,
                  size: 20,
                ),
              ),
            ],
          ),
          body: body,
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
