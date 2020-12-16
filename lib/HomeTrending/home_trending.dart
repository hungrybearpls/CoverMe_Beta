import 'package:flutter/material.dart';
import 'package:flutter_devfest/HomeTrending/detail_screen.dart';
import 'package:flutter_devfest/HomeTrending/parallax_page_view.dart';
import 'package:flutter_devfest/HomeTrending/stub_data.dart';
import 'package:flutter_devfest/HomeTrending/theme.dart';

class HomeTrending extends StatefulWidget {
  @override
  _HomeTrendingState createState() => _HomeTrendingState();
}

class _HomeTrendingState extends State<HomeTrending> {
  final List<String> hotelCategories = StubData().hotelCategories;
  final List<HotelCard> hotels = StubData().hotels;
  final List<EventCard> events = StubData().events;

  int checkedItem = 0;

  @override
  Widget build(BuildContext context) {
    final themeData = HotelConceptThemeProvider.get();
    return ScrollConfiguration(
      behavior: OverScrollBehavior(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).padding.top),
              SizedBox(height: 46),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Trending Near You",
                            style: TextStyle(
                                fontSize: 24,
                                color: themeData.primaryColorLight,
                                fontWeight: FontWeight.w600)),
                        Text("View all",
                            style: TextStyle(
                                fontSize: 12,
                                color: themeData.accentColor,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          checkedItem = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: double.infinity,
                        margin: EdgeInsets.only(
                            left: index == 0 ? 20 : 5, right: 5),
                        decoration: BoxDecoration(
                          color: index == checkedItem
                              ? themeData.accentColor
                              : themeData.unselectedWidgetColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              hotelCategories[index],
                              style: TextStyle(
                                  color: index == checkedItem
                                      ? Colors.white
                                      : themeData.accentColor),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: hotelCategories.length,
                ),
              ),
              const SizedBox(height: 10),
              ParallaxPageView(
                viewportFraction: 0.6,
                height: 360,
                data: hotels,
                onCardTap: (hotel) {
                  Navigator.of(context).push(
                    PageRouteBuilder<void>(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return AnimatedBuilder(
                            animation: animation,
                            builder: (BuildContext context, Widget child) {
                              return DetailScreen(
                                heroTag: "${hotel.cardTitle()}",
                                imageAsset: hotel.cardImageAsset(),
                              );
                            });
                      },
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Bars",
                        style: TextStyle(
                            fontSize: 24,
                            color: themeData.primaryColorLight,
                            fontWeight: FontWeight.w600)),
                    Text("View all",
                        style: TextStyle(
                            fontSize: 12,
                            color: themeData.accentColor,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              ParallaxPageView(
                viewportFraction: 0.8,
                height: 180,
                data: events,
                onCardTap: (hotel) {
                  Navigator.of(context).push(
                    PageRouteBuilder<void>(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return AnimatedBuilder(
                            animation: animation,
                            builder: (BuildContext context, Widget child) {
                              return DetailScreen(
                                heroTag: "${hotel.cardTitle()}",
                                imageAsset: hotel.cardImageAsset(),
                              );
                            });
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Clubs",
                        style: TextStyle(
                            fontSize: 24,
                            color: themeData.primaryColorLight,
                            fontWeight: FontWeight.w600)),
                    Text("View all",
                        style: TextStyle(
                            fontSize: 12,
                            color: themeData.accentColor,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              ParallaxPageView(
                viewportFraction: 0.8,
                height: 180,
                data: events,
                onCardTap: (hotel) {
                  Navigator.of(context).push(
                    PageRouteBuilder<void>(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return AnimatedBuilder(
                            animation: animation,
                            builder: (BuildContext context, Widget child) {
                              return DetailScreen(
                                heroTag: "${hotel.cardTitle()}",
                                imageAsset: hotel.cardImageAsset(),
                              );
                            });
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Restaurants",
                        style: TextStyle(
                            fontSize: 24,
                            color: themeData.primaryColorLight,
                            fontWeight: FontWeight.w600)),
                    Text("View all",
                        style: TextStyle(
                            fontSize: 12,
                            color: themeData.accentColor,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              ParallaxPageView(
                viewportFraction: 0.8,
                height: 180,
                data: events,
                onCardTap: (hotel) {
                  Navigator.of(context).push(
                    PageRouteBuilder<void>(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return AnimatedBuilder(
                            animation: animation,
                            builder: (BuildContext context, Widget child) {
                              return DetailScreen(
                                heroTag: "${hotel.cardTitle()}",
                                imageAsset: hotel.cardImageAsset(),
                              );
                            });
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
