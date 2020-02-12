import 'package:flutter/material.dart';
import 'package:github_consumer/user.dart';

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
        padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: Column(
          children: <Widget>[_searchBarArea(), _resultArea()],
        ),
      ),
    );
  }

  _searchBarArea() => Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height * 0.1,
      );

  /// TODO: ListView
//  _resultArea() => Container(
//    color: Colors.amber,
//    height: MediaQuery.of(context).size.height * 0.7,
//  );
  _resultArea() => Container(
        color: Colors.amber,
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text('Avatar'),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Github url',
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text('Estrelas'),
              ),
            ],),
            Expanded(
              child: _listView(),
            )
          ],
        ),
      );

  _listView() {
//    return ListView(
//      children: <Widget>[
//        Text('Texto'),
//        FlatButton(onPressed: null, child: Text('Isso é um botão'))
//      ],
//    );

    List<User> texts = List();
    texts.add(User(url: 'github.com', ratingStars: 1, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 2, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 3, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 2, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 5, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 3, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 4, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 2, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 1, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 3, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 5, avatar: ''));
    texts.add(User(url: 'github.com', ratingStars: 1, avatar: ''));

//    return ListView.builder(
//      itemCount: texts.length,
//      itemBuilder: (context, index) => Container(
//        child: Text('${texts.elementAt(index)}'),
//      ),
//    );

    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
        height: 2,
      ),
      itemCount: texts.length,
      itemBuilder: (context, index) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text('Avatar'),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                '${texts.elementAt(index).url}',
                style:
                    TextStyle(color: Colors.blue, fontStyle: FontStyle.italic,),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.2,
              child: Text('${texts.elementAt(index).ratingStars}'),
            ),
          ],
        ),
      ),
    );
  }
}
