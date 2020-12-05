import 'package:equatable/equatable.dart';
import 'package:flutter_devfest/home/restaurant.dart';
import 'package:flutter_devfest/home/notification.dart';
import 'package:flutter_devfest/home/bar.dart';
import 'package:flutter_devfest/home/club.dart';
import 'package:flutter_devfest/home/venue.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeState extends Equatable {
  HomeState([Iterable props]) : super(props);

  /// Copy object for use in action
  HomeState getStateCopy();
}

/// UnInitialized
class UnHomeState extends HomeState {
  @override
  String toString() => 'UnHomeState';

  @override
  HomeState getStateCopy() {
    return UnHomeState();
  }
}

/// Initialized
class InHomeState extends HomeState {
  // final BarsData barsData;
  // final NotificationsData notificationsData;
  // final ClubsData clubsData;
  // final RestaurantsData restaurantsData;
  final VenueData venueData;

  // InHomeState(
  //     {@required this.barsData,
  //     @required this.notificationsData,
  //     @required this.clubsData,
  //     @required this.restaurantsData,
  //     @required this.venueData})
  InHomeState({@required this.venueData}) : super([venueData]);
  // : super([barsData, notificationsData, clubsData, restaurantsData, venueData]);
  @override
  String toString() => 'InHomeState';

  @override
  HomeState getStateCopy() {
    return InHomeState(
        // barsData: this.barsData,
        // notificationsData: this.notificationsData,
        // clubsData: this.clubsData,
        // restaurantsData: this.restaurantsData,
        venueData: this.venueData);
  }
}

class ErrorHomeState extends HomeState {
  final String errorMessage;

  ErrorHomeState(this.errorMessage);

  @override
  String toString() => 'ErrorHomeState';

  @override
  HomeState getStateCopy() {
    return ErrorHomeState(this.errorMessage);
  }
}
