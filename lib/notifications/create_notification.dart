import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/venue.dart';
import 'package:flutter_devfest/universal/page_scaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateNotification extends StatelessWidget {
  static const String routeName = "/createnote";

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.phoneAlt,
                size: 15,
              ),
              onPressed: () {
                launch(venues[0].venuePhone);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: 15,
              ),
              onPressed: () {
                launch(venues[0].igUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebook,
                size: 15,
              ),
              onPressed: () {
                launch(venues[0].fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.directions,
                size: 15,
              ),
              onPressed: () {
                launch(venues[0].venueAddress);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Send Post',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
        ),
      ),
    );
  }
}
