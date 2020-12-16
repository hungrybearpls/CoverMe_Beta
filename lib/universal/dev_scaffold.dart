import 'package:flutter/material.dart';
import 'package:flutter_devfest/config/config_bloc.dart';
import 'package:flutter_devfest/config/config_event.dart';
import 'package:flutter_devfest/venue_pages/userProfile/userProfileScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

class DevScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;

  const DevScaffold(
      {Key key, @required this.body, @required this.title, this.tabBar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          widthFactor: 7,
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserProfile()));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ),
                        Align(
                          widthFactor: 6,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.0, right: 0.0),
                            child: OutlineButton(
                              textColor: Colors.black,
                              color: Colors.white,
                              child: Text("Help"),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(5.0), //or 15.0
                              child: Container(
                                  height: 40.0,
                                  width: 40.0,
                                  color: Colors.black,
                                  child: Icon(Icons.volume_up)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ListTile(
                  title: Text('Venue Profile'),
                ),
                ListTile(
                  title: Text('Send Post'),
                ),
                ListTile(
                  title: Text('Tile'),
                ),
                ListTile(
                  title: Text('Analytics'),
                ),
                ListTile(
                  title: Text('Settings'),
                ),
                ListTile(
                  title: Text('Assign Roles'),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            bottom: tabBar != null ? tabBar : null,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  ConfigBloc().darkModeOn
                      ? FontAwesomeIcons.lightbulb
                      : FontAwesomeIcons.solidLightbulb,
                  size: 18,
                ),
                onPressed: () {
                  // ConfigBloc().add(DarkModeEvent(!ConfigBloc().darkModeOn));
                },
              ),
              IconButton(
                onPressed: () => Share.share(
                    "Download the new DevFest App and share with your tech friends.\nPlayStore -  http://bit.ly/2GDr18N"),
                icon: Icon(
                  Icons.share,
                  size: 20,
                ),
              ),
            ],
          ),
          body: body,
        ),
      ),
    );
  }
}
