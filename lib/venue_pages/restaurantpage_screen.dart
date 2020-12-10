import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/venue.dart';
import 'package:flutter_devfest/venue_pages/venue_page.dart';

class RestaurantPageScreen extends StatelessWidget {
  static const String routeName = "/restaurantpage_screen";

  @override
  Widget build(BuildContext context) {
    return VenuesPage(type: Venues.typeRestaurant);
  }
}
