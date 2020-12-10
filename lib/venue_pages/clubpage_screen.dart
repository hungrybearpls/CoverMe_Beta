import 'package:flutter/material.dart';
import 'package:flutter_devfest/venue_pages/venue_page.dart';
import 'package:flutter_devfest/home/venue.dart';

class ClubPageScreen extends StatelessWidget {
  static const String routeName = "/clubpage_screen";

  @override
  Widget build(BuildContext context) {
    return VenuesPage(type: Venues.typeClub);
  }
}
