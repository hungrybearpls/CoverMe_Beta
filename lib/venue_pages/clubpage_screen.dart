import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/home_state.dart';
import 'package:flutter_devfest/venue_pages/venue_page.dart';

class ClubPageScreen extends StatelessWidget {
  static const String routeName = "/clubpage_screen";

  const ClubPageScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
