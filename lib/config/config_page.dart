import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/create_venues/send_post.dart';
import 'package:flutter_devfest/create_venues/venue_profile_page.dart';
import 'package:flutter_devfest/faq/faq_page.dart';
import 'package:flutter_devfest/find_devfest/find_devfest_page.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/home_page.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/map/map_page.dart';
import 'package:flutter_devfest/notifications/create_notification.dart';
import 'package:flutter_devfest/notifications/notification_page.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/venue_pages/barpage_screen.dart';
import 'package:flutter_devfest/venue_pages/clubpage_screen.dart';
import 'package:flutter_devfest/venue_pages/restaurantpage_screen.dart';

class ConfigPage extends StatefulWidget {
  static const String routeName = "/";
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  ConfigBloc configBloc;

  @override
  void initState() {
    super.initState();
    setupApp();
  }

  setupApp() {
    configBloc = ConfigBloc();
    configBloc.darkModeOn =
        Devfest.prefs.getBool(Devfest.darkModePref) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc()..add(LoadHomeEvent()),
      child: BlocProvider(
        create: (context) => configBloc,
        child: BlocBuilder<ConfigBloc, ConfigState>(
          builder: (context, state) {
            return MaterialApp(
              title: 'Google Devfest',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                //* Custom Google Font
                fontFamily: Devfest.google_sans_family,
                primarySwatch: Colors.red,
                primaryColor:
                    configBloc.darkModeOn ? Colors.black : Colors.white,
                disabledColor: Colors.grey,
                cardColor: configBloc.darkModeOn ? Colors.black : Colors.white,
                canvasColor:
                    configBloc.darkModeOn ? Colors.black : Colors.grey[50],
                brightness:
                    configBloc.darkModeOn ? Brightness.dark : Brightness.light,
                buttonTheme: Theme.of(context).buttonTheme.copyWith(
                    colorScheme: configBloc.darkModeOn
                        ? ColorScheme.dark()
                        : ColorScheme.light()),
                appBarTheme: AppBarTheme(
                  elevation: 0.0,
                ),
              ),
              home: HomePage(),
              routes: {
                HomePage.routeName: (context) => HomePage(),
                BarPageScreen.routeName: (context) => BarPageScreen(),
                RestaurantPageScreen.routeName: (context) =>
                    RestaurantPageScreen(),
                NotificationPage.routeName: (context) => NotificationPage(),
                VenueProfilePage.routeName: (context) => VenueProfilePage(),
                ClubPageScreen.routeName: (context) => ClubPageScreen(),
                SendPost.routeName: (context) => SendPost(),
                FaqPage.routeName: (context) => FaqPage(),
                FindDevFestPage.routeName: (context) => FindDevFestPage(),
                MapPage.routeName: (context) => MapPage(),
                CreateNotification.routeName: (context) => CreateNotification(),
              },
            );
          },
        ),
      ),
    );
  }
}
