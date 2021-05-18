import 'package:flutter/material.dart';

class TrailerTile extends StatefulWidget {
  final imageURL;
  final title;
  final runtime;
  TrailerTile({this.imageURL, this.title, this.runtime});
  @override
  _TrailerTileState createState() => _TrailerTileState();
}

class _TrailerTileState extends State<TrailerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:15.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: FittedBox(
                child: Image.asset(widget.imageURL),
                fit: BoxFit.fill,
              ),
            ),),
          SizedBox(width: 20.0),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceEvenly,
                crossAxisAlignment:
                CrossAxisAlignment
                    .stretch,
                children: [
                  Text(widget.title),
                  Text(widget.runtime)
                ],
              ),
            ),
          ),
          IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
