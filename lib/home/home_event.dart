import 'dart:async';
import 'package:flutter_devfest/home/home_provider.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent {
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  final IHomeProvider _homeProvider = HomeProvider();
  @override
  String toString() => 'LoadHomeEvent';

  @override
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc}) async {
    try {
      var venueData = await _homeProvider.getVenues();
      // var barsData = await _homeProvider.getBars();
      // var notificationsData = await _homeProvider.getNotifications();
      // var clubsData = await _homeProvider.getClubs();
      // var restaurantsData = await _homeProvider.getRestaurants();
      return InHomeState(venueData: venueData
          // barsData: barsData,
          // notificationsData: notificationsData,
          // clubsData: clubsData,
          // restaurantsData: restaurantsData,
          );
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorHomeState(_?.toString());
    }
  }
}
