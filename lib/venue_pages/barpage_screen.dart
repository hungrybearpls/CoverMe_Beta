import 'package:flutter/material.dart';
import 'package:flutter_devfest/venue_pages/venue_page.dart';
import 'package:flutter_devfest/home/venue.dart';

class BarPageScreen extends StatelessWidget {
  static const String routeName = "/barpage_screen";

  @override
  Widget build(BuildContext context) {
    return VenuesPage(type: Venues.typeBar);
  }
}
