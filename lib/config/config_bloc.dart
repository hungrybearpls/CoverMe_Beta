import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/home_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  ConfigBloc() : super(UnConfigState());

  bool darkModeOn = false;

  ConfigState get initialState => new UnConfigState();

  @override
  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {
    try {
      yield UnConfigState();
      yield await event.applyAsync(currentState: state, bloc: this);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield state;
    }
  }
}
