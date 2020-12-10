import 'dart:math';

import 'package:flutter_devfest/home/home_page.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/universal/image_card.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:flutter_devfest/venue_auth/welcome_login/signin_page.dart';

import 'package:flutter_devfest/venue_pages/clubpage_screen.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/config/index.dart';

import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';

class SignUpPage extends StatelessWidget {
  List<Widget> devFestTexts(context) => [
        Text(
          Devfest.onboardingWelcomeText,
          style: Theme.of(context).textTheme.headline,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Devfest.onboardingDesc,
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
            icon: FontAwesomeIcons.userPlus,
            color: Colors.deepPurple,
            title: Devfest.signup_text,
            onPressed: () =>
                Navigator.pushNamed(context, ClubPageScreen.routeName),
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
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Sign Up",
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ImageCard(
                img: ConfigBloc().darkModeOn
                    ? Devfest.banner_dark
                    : Devfest.banner_light,
              ),
              SizedBox(
                height: 20,
              ),
              ...devFestTexts(context),
              TextFormField(
                decoration: InputDecoration(labelText: 'Business name'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Flexible(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(labelText: 'Zip Code'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(labelText: 'City'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(labelText: 'State'),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ArgonButton(
                height: 40,
                width: 150,
                borderRadius: 5.0,
                color: Tools.multiColors[Random().nextInt(4)],
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: Devfest.google_sans_family,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                loader: Container(
                  padding: EdgeInsets.all(10),
                  child: SpinKitChasingDots(
                    color: Tools.multiColors[Random().nextInt(4)],
                    // size: loaderWidth ,
                  ),
                ),
                onTap: (startLoading, stopLoading, btnState) {},
              ),
              SizedBox(
                height: 20,
              ),
              socialActions(context),
              SizedBox(
                height: 20,
              ),
              Text(
                Devfest.app_version,
                style:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 10),
              ),
            ],
          ),
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
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: ConfigBloc().darkModeOn
              ? Tools.hexToColor("#1f2124")
              : Colors.white,
          borderRadius: BorderRadius.circular(6),
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
            // Icon(
            //   icon,
            //   color: color,
            // ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 20,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
