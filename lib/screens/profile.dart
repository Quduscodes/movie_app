import 'package:flutter/material.dart';
import 'package:movie_app/components/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:40.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
            child: CircleAvatar(
              radius: 65.0,
              child: Image.asset(''),
            ),
          ),
          Container(
            child: Text('Tasun Prasad', style: TextStyle(fontSize: 25.0)),
          ),
          Container(
            child: Text('Premium', style: TextStyle(fontSize: 20.0, color: orangeTextColor),),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
          ),
          Divider(
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          Divider(
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          Divider(
          ),
          ListTile(
            leading: Icon(Icons.info_outlined),
            title: Text('Help'),
          ),
          Divider(
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
