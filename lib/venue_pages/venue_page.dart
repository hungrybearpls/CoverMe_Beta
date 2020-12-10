import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_devfest/home/venue.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:flutter_devfest/venue_pages/venue_detail.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class VenuesPage extends StatelessWidget {
  final String type;

  const VenuesPage({
    Key key,
    @required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venues = FirebaseFirestore.instance
        .collection('venues')
        .where('type', isEqualTo: this.type);

    return DevScaffold(
        title: this._typeToTitle(this.type),
        body: StreamBuilder(
          stream: venues.snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            return VenueList(
                venues: snapshot.data.documents
                    .map((document) => Venues.fromJson(document.data()))
                    .toList()
                    .cast<Venues>());
          },
        ));
  }

  String _typeToTitle(String type) =>
      type[0].toUpperCase() + type.substring(1) + 's';
}

class VenueList extends StatelessWidget {
  VenueList({
    @required this.venues,
  });

  final List<Venues> venues;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: venues.length,
      itemBuilder: (c, i) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VenueDetail(venues: venues[i]),
              ),
            );
          },
          child: Card(
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints.expand(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: venues[i].venueImage,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              venues[i].venueName,
                              style: Theme.of(context).textTheme.title,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 5,
                              color: Tools.multiColors[Random().nextInt(4)],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          venues[i].dailyHeadline,
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          venues[i].venueCover,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        socialActions(venues[i]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget socialActions(Venues venue) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.phoneAlt,
                size: 15,
              ),
              onPressed: () {
                launch(venue.venuePhone);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launch(venue.fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: 15,
              ),
              onPressed: () {
                launch(venue.igUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.directions,
                size: 15,
              ),
              onPressed: () {
                launch(venue.venueAddress);
              },
            ),
          ],
        ),
      );
}
