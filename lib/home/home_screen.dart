import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/dialogs/error_dialog.dart';
import 'package:flutter_devfest/home/home_widgets/home_front.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      cubit: BlocProvider.of<HomeBloc>(context),
      listener: (context, state) {
        if (state is ErrorHomeState) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => ErrorDialog(
              error: state.errorMessage,
              onTap: () {
                BlocProvider.of<HomeBloc>(context).add(LoadHomeEvent());
              },
            ),
          );
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
          cubit: BlocProvider.of<HomeBloc>(context),
          builder: (
            BuildContext context,
            HomeState currentState,
          ) {
            if (currentState is UnHomeState) {
              return Center(
                child: SpinKitChasingDots(
                  color: Tools.multiColors[Random().nextInt(3)],
                ),
              );
            }
            if (currentState is ErrorHomeState) {
              return Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      currentState.errorMessage ?? 'Error',
                      textAlign: TextAlign.center,
                    ),
                  ));
            }
            return HomeFront();
          }),
    );
  }
}
