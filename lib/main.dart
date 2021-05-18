import 'package:flutter/material.dart';
import 'package:movie_app/components/constants.dart';
import 'file:///C:/Users/READY/AndroidStudioProjects/movie_app/lib/screens/favorites.dart';
import 'file:///C:/Users/READY/AndroidStudioProjects/movie_app/lib/screens/home.dart';
import 'file:///C:/Users/READY/AndroidStudioProjects/movie_app/lib/screens/profile.dart';
import 'file:///C:/Users/READY/AndroidStudioProjects/movie_app/lib/screens/trailers.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData.dark(),
      home: BottomMenu(),
    );
  }
}

class BottomMenu extends StatefulWidget {
  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    Favorites(),
    Trailers(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Trailers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: unselectedBottomIconColor,
        currentIndex: _selectedIndex,
        selectedItemColor: bottomIconColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

//
// Container(
// padding: EdgeInsets.all(5.0),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15.0),
// ),
// height: height * 0.3,
// width: width * 0.7,
// child: FittedBox(
// child: Image.network(imageTitle),
// fit: BoxFit.fill,
// ),
// ),
