import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Venue Name',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Venue Email',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  OutlineButton(
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("Edit"),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  OutlineButton(
                    textColor: Colors.red,
                    color: Colors.red,
                    child: Text("Logout"),
                    onPressed: () {},
                    borderSide: BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'PUSH-NOTIFICATIONS',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 30,
                        thickness: 1,
                        indent: 10,
                        endIndent: 0,
                      ),
                      SwitchListTile(
                        title: Text('Notifications'),
                        value: _lights,
                        onChanged: (bool value) {},
                        secondary: const Icon(Icons.notifications),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
