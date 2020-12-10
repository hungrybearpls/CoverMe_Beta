import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/venue_auth/welcome_login/signin_page.dart';
import 'package:flutter_devfest/venue_auth/welcome_login/signup_page.dart';

class OnboardingPage extends StatelessWidget {
  static const String routeName = "/onboarding_page";

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: SigninPage(),
      title: "Sign In",
    );
  }
}
