import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import '../universal/dev_scaffold.dart';
import '../utils/devfest.dart';
import '../utils/tools.dart';

class VenueProfilePage extends StatelessWidget {
  static const String routeName = "/venueprofile";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      title: "Venue Profile",
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
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
              Text(
                "VENUE ADDRESS",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                      fontSize: 14,
                      color: Tools.multiColors[Random().nextInt(4)],
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "VENUE NAME",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                      fontSize: 20,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(hintText: 'Venue Name'),
                      onChanged: (text) {
                        // do something with text
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(hintText: 'Phone Number'),
                      onChanged: (text) {
                        // do something with text
                      },
                      validator: (val) {
                        if (val.length < 10) {
                          return "Phone";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(hintText: 'Venue Address'),
                onChanged: (text) {
                  // do something with text
                },
                validator: (val) {
                  if (val.length == 0) {
                    return "Address";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(hintText: 'City'),
                      onChanged: (text) {
                        // do something with text
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "City";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(hintText: 'State'),
                      onChanged: (text) {
                        // do something with text
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "State";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(hintText: 'Zip'),
                      onChanged: (text) {
                        // do something with text
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "Zip";
                        } else {
                          return null;
                        }
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Venue Type: ",
                    style: TextStyle(
                        fontFamily: Devfest.google_sans_family, fontSize: 20),
                  ),
                  Expanded(
                    child: RadioButtonGroup(
                      labels: <String>["Bar", "Club", "Restaurant"],
                      orientation: GroupedButtonsOrientation.HORIZONTAL,
                      activeColor: Colors.blueAccent,
                      onSelected: (String selected) => print(selected),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
