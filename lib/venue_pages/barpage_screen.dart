import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/home_state.dart';
import 'package:flutter_devfest/venue_pages/venue_page.dart';

class BarPageScreen extends StatelessWidget {
  static const String routeName = "/barpage_screen";

  const BarPageScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var state = homeBloc.currentState as InHomeState;
    // var barList = state.venueData.venue;
    // var barVenues = barList.where((s) => s.track == "bar").toList();
    return BlocBuilder(
        bloc: BlocProvider.of<HomeBloc>(context),
        builder: (context, state) {
          if (state is InHomeState) {
            return VenuePage(
                allVenues: state.venueData.venue
                    .where((s) => s.track == "bar")
                    .toList());
          }
          return CircularProgressIndicator();
        });
    // return VenuePage(allVenues: barVenues);
  }
}
