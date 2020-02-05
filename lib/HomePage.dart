import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            _searchBarArea(),
            _resultArea()
          ],
        ),
      ),
    );
  }

  _searchBarArea() => Container(
    color: Colors.green,
    height: MediaQuery.of(context).size.height * 0.1,
  );

  /// TODO: ListView
  _resultArea() => Container(
    color: Colors.amber,
    height: MediaQuery.of(context).size.height * 0.7,
  );
}

