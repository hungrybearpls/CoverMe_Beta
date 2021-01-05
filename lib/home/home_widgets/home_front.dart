import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/create_venues/send_post.dart';
import 'package:flutter_devfest/map/map_page.dart';
import 'package:flutter_devfest/notifications/notification_page.dart';
import 'package:flutter_devfest/universal/image_card.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:flutter_devfest/venue_auth/welcome_login/signin_page.dart';
import 'package:flutter_devfest/venue_pages/barpage_screen.dart';
import 'package:flutter_devfest/venue_pages/clubpage_screen.dart';
import 'package:flutter_devfest/venue_pages/restaurantpage_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFront extends StatelessWidget {
  List<Widget> devFestTexts(context) => [
        Text(
          Devfest.welcomeText,
          style: Theme.of(context).textTheme.headline,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Devfest.descText,
          style: Theme.of(context).textTheme.caption,
          textAlign: TextAlign.center,
        ),
      ];

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget newActions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 20.0,
        runSpacing: 20.0,
        children: <Widget>[
          ActionCard(
            icon: FontAwesomeIcons.beer,
            color: Colors.blueAccent,
            title: Devfest.bars_text,
            onPressed: () =>
                Navigator.pushNamed(context, BarPageScreen.routeName),
          ),
          ActionCard(
            icon: FontAwesomeIcons.glassCheers,
            color: Colors.deepPurple,
            title: Devfest.clubs_text,
            onPressed: () =>
                Navigator.pushNamed(context, ClubPageScreen.routeName),
          ),
          ActionCard(
            icon: Icons.restaurant,
            color: Colors.red,
            title: Devfest.restaurants_text,
            onPressed: () =>
                Navigator.pushNamed(context, RestaurantPageScreen.routeName),
          ),
          ActionCard(
            icon: Icons.schedule,
            color: Colors.deepOrangeAccent,
            title: Devfest.agenda_text,
            onPressed: () =>
                Navigator.pushNamed(context, NotificationPage.routeName),
          ),
          ActionCard(
            icon: Icons.attach_money_sharp,
            color: Colors.green,
            title: 'Pay',
            onPressed: () {},
          ),
          ActionCard(
            icon: Icons.map,
            color: Colors.indigo,
            title: Devfest.map_text,
            onPressed: () => Navigator.pushNamed(context, MapPage.routeName),
          ),
          ActionCard(
            icon: Icons.post_add,
            color: Colors.orangeAccent,
            title: 'Notify',
            onPressed: () => Navigator.pushNamed(context, SendPost.routeName),
          ),
        ],
      );

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.facebookF),
              onPressed: () async {
                await _launchURL("https://facebook.com/imthepk");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter),
              onPressed: () async {
                await _launchURL("https://twitter.com/imthepk");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.linkedinIn),
              onPressed: () async {
                _launchURL("https://linkedin.com/in/imthepk");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.youtube),
              onPressed: () async {
                await _launchURL("https://youtube.com/mtechviral");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.envelope),
              onPressed: () async {
                var emailUrl =
                    '''mailto:mtechviral@gmail.com?subject=Support Needed For DevFest App&body={Name: Pawan Kumar},Email: pawan221b@gmail.com}''';
                var out = Uri.encodeFull(emailUrl);
                await _launchURL(out);
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.signInAlt),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SigninPage()));
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                          items: [
                            ImageCard(
                              img: Devfest.banner_light,
                            ),
                            ImageCard(
                              img: Devfest.banner_dark,
                            )
                          ],
                          options: CarouselOptions(
                              height: 300, scrollDirection: Axis.horizontal))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ...devFestTexts(context),
            SizedBox(
              height: 20,
            ),
            newActions(context),
            SizedBox(
              height: 20,
            ),
            socialActions(context),
            SizedBox(
              height: 20,
            ),
            Text(
              Devfest.app_version,
              style: Theme.of(context).textTheme.caption.copyWith(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;
  final Color color;

  const ActionCard({Key key, this.onPressed, this.icon, this.title, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onPressed,
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          color: ConfigBloc().darkModeOn
              ? Tools.hexToColor("#1f2124")
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: !ConfigBloc().darkModeOn
              ? [
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
