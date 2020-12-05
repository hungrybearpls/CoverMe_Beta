import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/home/restaurant.dart';
import 'package:flutter_devfest/home/notification.dart';
import 'package:flutter_devfest/home/bar.dart';
import 'package:flutter_devfest/home/club.dart';
import 'package:flutter_devfest/home/venue.dart';
import 'package:flutter_devfest/network/i_client.dart';
import 'package:flutter_devfest/utils/dependency_injection.dart';
import 'package:flutter_devfest/utils/devfest.dart';

abstract class IHomeProvider {
  Future<VenueData> getVenues();
  // Future<BarsData> getBars();
  // Future<NotificationsData> getNotifications();
  // Future<ClubsData> getClubs();
  // Future<RestaurantsData> getRestaurants();
}

class HomeProvider implements IHomeProvider {
  IClient _client;

  static final String kConstGetBarsUrl = "${Devfest.baseUrl}/bar-kol.json";

  //! Not Working
  static final String kConstGetNotificationsUrl =
      "${Devfest.baseUrl}/notification-kol.json";

  //! Not Working
  static final String kConstGetClubsUrl = "${Devfest.baseUrl}/club-kol.json";

  //! Not Working
  static final String kConstGetRestaurantsUrl =
      "${Devfest.baseUrl}/restaurant-kol.json";

  // static final String kConstantGetVenuesURl =

  HomeProvider() {
    _client = Injector().currentClient;
  }

  // @override
  // Future<BarsData> getBars() async {
  //   var result = await _client.getAsync(kConstGetBarsUrl);
  //   if (result.networkServiceResponse.success) {
  //     BarsData res = BarsData.fromJson(result.mappedResult);
  //     return res;
  //   }
  //
  //   throw Exception(result.networkServiceResponse.message);
  // }
  //
  // @override
  // Future<NotificationsData> getNotifications() async {
  //   var result = await _client.getAsync(kConstGetNotificationsUrl);
  //   if (result.networkServiceResponse.success) {
  //     NotificationsData res = NotificationsData.fromJson(result.mappedResult);
  //     return res;
  //   }
  //
  //   throw Exception(result.networkServiceResponse.message);
  // }
  //
  // @override
  // Future<ClubsData> getClubs() async {
  //   var result = await _client.getAsync(kConstGetClubsUrl);
  //   if (result.networkServiceResponse.success) {
  //     ClubsData res = ClubsData.fromJson(result.mappedResult);
  //     return res;
  //   }
  //
  //   throw Exception(result.networkServiceResponse.message);
  // }
  //
  // @override
  // Future<RestaurantsData> getRestaurants() async {
  //   var result = await _client.getAsync(kConstGetRestaurantsUrl);
  //   if (result.networkServiceResponse.success) {
  //     RestaurantsData res = RestaurantsData.fromJson(result.mappedResult);
  //     return res;
  //   }
  //   throw Exception(result.networkServiceResponse.message);
  // }

  @override
  Future<VenueData> getVenues() async {
    return VenueData.fromJson(
      jsonDecode(
        await rootBundle.loadString('assets/json/venues.json'),
      ),
    );
  }
}
