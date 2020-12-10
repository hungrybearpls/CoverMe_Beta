import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/home_state.dart';
import 'package:flutter_devfest/venue_pages/venue_page.dart';
import 'package:flutter_devfest/home/venue.dart';

class ClubPageScreen extends StatelessWidget {
  static const String routeName = "/clubpage_screen";

  const ClubPageScreen({
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
    return BlocBuilder(
        bloc: BlocProvider.of<HomeBloc>(context),
        builder: (context, state) {
          if (state is InHomeState) {
            return VenuePage(
                allVenues: state.venueData.venue
                    .where((s) => s.track == "club")
                    .toList());
          }
          return CircularProgressIndicator();
        });
  }
}
