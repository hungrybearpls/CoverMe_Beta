// *  Not needed as of now
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/home/home_provider.dart';
import 'package:flutter_devfest/home/notification.dart';

import 'package:flutter_devfest/home/venue.dart';
import 'package:flutter_devfest/utils/dependency_injection.dart';
import 'package:flutter_devfest/utils/devfest.dart';

import 'index.dart';

class MockClient implements IClient {
  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String resourcePath,
      {bool customHeaders}) async {
    var resultClass;
    String rawString;

    //? For Bars Hardcoded Data
    if (resourcePath == HomeProvider.kConstGetBarsUrl) {
      if (Injector().currentDataMode == DataMode.DART) {
        rawString = jsonEncode(VenueData(bars: bars));
      } else {
        rawString = await rootBundle.loadString(Devfest.barsAssetJson);
      }
      resultClass = await compute(jsonParserIsolate, rawString);
    }

    //? For Sessions Hardcoded Data
    else if (resourcePath == HomeProvider.kConstGetNotificationsUrl) {
      if (Injector().currentDataMode == DataMode.DART) {
        rawString = jsonEncode(NotificationsData(notification: notifications));
      } else {
        rawString = await rootBundle.loadString(Devfest.sessionsAssetJson);
      }
      resultClass = await compute(jsonParserIsolate, rawString);
    }

    //? For Clubs Hardcoded Data
    else if (resourcePath == HomeProvider.kConstGetClubsUrl) {
      if (Injector().currentDataMode == DataMode.DART) {
        rawString = jsonEncode(VenueData(clubs: clubs));
      } else {
        rawString = await rootBundle.loadString(Devfest.clubsAssetJson);
      }
      resultClass = await compute(jsonParserIsolate, rawString);
    }

    //? For Restaurants Hardcoded Data
    else if (resourcePath == HomeProvider.kConstGetRestaurantsUrl) {
      if (Injector().currentDataMode == DataMode.DART) {
        rawString = jsonEncode(VenueData(restaurants: restaurants));
      } else {
        rawString = await rootBundle.loadString(Devfest.restaurantAssetJson);
      }
      resultClass = await compute(jsonParserIsolate, rawString);
    }

    return MappedNetworkServiceResponse<T>(
        mappedResult: resultClass,
        networkServiceResponse: NetworkServiceResponse<T>(success: true));
  }

  @override
  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, data,
      {bool customHeaders = false}) {
    return null;
  }

  // * JSON Decoding using Isolates
  static Map<String, dynamic> jsonParserIsolate(String res) {
    return jsonDecode(res);
  }
}
