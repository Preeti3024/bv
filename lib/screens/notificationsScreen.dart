import 'package:flutter/material.dart';

import '../components/appBar.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Notifications',
        child: Icon(
          Icons.arrow_back_ios,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        onTitleTapped: () {
          Null;
        },
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          ListTile(
            subtitle: Text(
                "You'll continue to receive payment notfications. You can decide to block or receive other types of notifications."),
            onTap: () {},
          ),
          ListTile(
            title: Text("Tips"),
            trailing: IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: null,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Friends' Activity"),
            trailing: IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: null,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Smart Alerts"),
            trailing: IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: null,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Offers & Rewards"),
            trailing: IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: null,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Transaction History & Recommendations"),
            trailing: IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: null,
            ),
            onTap: () {},
          ),
          Divider(
            height: 0.0,
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              "LEARN MORE",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.info_outline,
                color: Colors.blue,
              ),
              onPressed: null,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
