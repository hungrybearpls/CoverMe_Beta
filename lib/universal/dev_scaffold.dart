import 'package:flutter/material.dart';
import 'package:flutter_devfest/create_venues/daily_profile.dart';
import 'package:flutter_devfest/create_venues/send_post.dart';
import 'package:flutter_devfest/faq/faq_page.dart';
import 'package:flutter_devfest/home/home_widgets/home_front.dart';
import 'package:flutter_devfest/notifications/notification_page.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/venue_pages/userProfile/userProfileScreen.dart';
import 'package:share/share.dart';

class DevScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[HomeFront(), NotificationPage()];

// @SLY
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  DevScaffold({Key key, @required this.body, @required this.title, this.tabBar})
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
          bottomNavigationBar: BottomNavigationBar(
            onTap: _onItemTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dynamic_feed),
                label: 'Feed',
              ),
            ],
            currentIndex: _selectedIndex,
          ),
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DailyPage()),
                      );
                    },
                    title: Text(
                      '🗓 Daily Updates',
                      style: TextStyle(
                          fontFamily: Devfest.google_sans_family, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SendPost()),
                      );
                    },
                    title: Text(
                      '💬 Post',
                      style: TextStyle(
                          fontFamily: Devfest.google_sans_family, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DailyPage()),
                      );
                    },
                    title: Text(
                      '📈 Analytics',
                      style: TextStyle(
                          fontFamily: Devfest.google_sans_family, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DailyPage()),
                      );
                    },
                    title: Text(
                      '👥 Assign Roles',
                      style: TextStyle(
                          fontFamily: Devfest.google_sans_family, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    selectedTileColor: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DailyPage()),
                      );
                    },
                    title: Text(
                      '⚙ Settings',
                      style: TextStyle(
                          fontFamily: Devfest.google_sans_family, fontSize: 15),
                    ),
                  ),
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

void setState(Null Function() param0) {}
