import 'package:flutter/material.dart';
import 'package:flutter_devfest/create_venues/send_post.dart';
import 'package:flutter_devfest/faq/faq_page.dart';
import 'package:flutter_devfest/home/home_widgets/home_front.dart';
import 'package:flutter_devfest/notifications/notification_page.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/venue_pages/barpage_screen.dart';
import 'package:flutter_devfest/venue_pages/userProfile/userProfileScreen.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    // BorderRadiusGeometry radius = BorderRadius.only(
    //   topLeft: Radius.circular(24.0),
    //   topRight: Radius.circular(24.0),
    // );

    return Scaffold(
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
                          borderRadius: BorderRadius.circular(5.0), //or 15.0
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Cover",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "Me",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      body: HomeFront()
      
    );
  }
}
