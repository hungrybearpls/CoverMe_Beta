import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_devfest/home/index.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(UnHomeState());

  HomeState get initialState => UnHomeState();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield UnHomeState();
    try {
      yield await event.applyAsync(currentState: state, bloc: this);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield state;
    }
  }
}
