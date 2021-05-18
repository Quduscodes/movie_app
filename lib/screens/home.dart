import 'package:flutter/material.dart';
import 'package:movie_app/components/constants.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Center(
              child: Text(
                appTitle,
                style: TextStyle(fontSize: 25.0),
              )),
          Center(
              child: Text(
                'What Would You Like To Watch Today?',
                style: TextStyle(fontSize: 20.0),
              )),
          SearchBox(),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 250.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/slide1.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/slide2.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/slide3.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/slide4.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/slide5.PNG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Expanded(
                child: Row(
                    children: [
                      Text(
                        'TRENDING NOW',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      Text('See All', style: TextStyle(fontSize: 20.0))
                    ])),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 300.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home1.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home2.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home3.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home4.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home5.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Expanded(
                child: Row(
                    children: [
                      Text(
                        'TOP MOVIES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      Text('See All', style: TextStyle(fontSize: 20.0))
                    ])),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 300.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home1.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home2.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home3.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home4.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          child: FittedBox(
                            child: Image.asset('assets/home5.JPG'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () {
      showSearch(context: context, delegate: SearchBoxDelegate());
    },
    child: Container(
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 80.0,
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          width: MediaQuery.of(context).size.width / 2,
          height: 45.0,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black38,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Search',
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

class SearchBoxDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            query;
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
        child: Center(
          child: Text(
            query,
            style: TextStyle(color: Colors.black),
          ),
        ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}