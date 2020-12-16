import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import '../utils/devfest.dart';

class DailyProfile extends StatelessWidget {
  static const String routeName = "/daily_profile";
  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.phoneAlt,
                size: 15,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.directions,
                size: 15,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.comment,
                size: 15,
              ),
              onPressed: () {},
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Daily Headline:",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.title.copyWith(
                          fontSize: 15,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration:
                          InputDecoration(hintText: 'Theme, Dress Code etc'),
                      onChanged: (text) {
                        // do something with text
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "Daily Headline";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hours of Operation:",
                    style: TextStyle(
                        fontFamily: Devfest.google_sans_family, fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: '8PM - 12AM'),
                      onChanged: (text) {
                        // do something with text
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "Hours of Operation";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cover Price:",
                    style: TextStyle(
                        fontFamily: Devfest.google_sans_family, fontSize: 15),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: RadioButtonGroup(
                      // onChange:
                      labels: <String>[
                        "No Cover",
                        "\$5",
                        "\$10",
                        "\$20",
                        "\$50",
                        "Custom"
                      ],
                      orientation: GroupedButtonsOrientation.HORIZONTAL,
                      activeColor: Colors.blueAccent,
                      onSelected: (String selected) => print(selected),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Custom Cover Price (Include \$)'),
                onChanged: (text) {
                  // do something with text
                },
                validator: (val) {
                  if (val.length == 0) {
                    return "Custom Cover";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Description",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: Devfest.google_sans_family, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLines: 5,
                maxLength: 140,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'Daily Drink Deals, Menu, Philosophy... Anything',
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text(
                  'Save',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: Devfest.google_sans_family),
                ),
                color: Colors.redAccent,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.red)),
              ),
              socialActions(context),
            ],
          ),
        ),
      ),
    );
  }
}
