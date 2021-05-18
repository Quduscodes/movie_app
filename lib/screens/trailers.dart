import 'package:flutter/material.dart';
import 'package:movie_app/components/trailersTile.dart';

class Trailers extends StatefulWidget {
  @override
  _TrailersState createState() => _TrailersState();
}

class _TrailersState extends State<Trailers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: [
          TrailerTile(imageURL: 'assets/slide2.PNG',title:'Suicide Squad 1',runtime: '1hr 5mins'),
          TrailerTile(imageURL: 'assets/slide3.JPG',title:'Army of the Dead',runtime: '2hr 5mins'),
          TrailerTile(imageURL: 'assets/slide4.JPG',title:'The Falcon and The Winter Soldier',runtime: '2hr 30mins'),
          TrailerTile(imageURL: 'assets/slide5.PNG',title:'Suicide Squad 1',runtime: '2hr 5mins'),
        ]),
    );
  }
}
