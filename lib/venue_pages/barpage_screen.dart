import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/home_state.dart';
import 'package:flutter_devfest/venue_pages/venue_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_devfest/home/venue.dart';

class BarPageScreen extends StatelessWidget {
  static const String routeName = "/barpage_screen";

  BarPageScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venues = FirebaseFirestore.instance.collection('venues');
    return StreamBuilder(
        stream: venues.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return VenuePage(
              allVenues: snapshot.data.documents
                  .map((document) => Venues.fromJson(document.data()))
                  .toList()
                  .cast<Venues>());
        });
  }
}
