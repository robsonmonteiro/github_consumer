import 'package:flutter/cupertino.dart';

class User {
  User({@required this.url, @required this.ratingStars, @required this.avatar});

  final String url;
  final int ratingStars;
  final String avatar;

  factory User.fromJSON(Map<String, dynamic> userFromServer) => User(
    url: userFromServer[''] as String,
    ratingStars: userFromServer[''] as int,
    avatar: userFromServer[''] as String,
  );

}
