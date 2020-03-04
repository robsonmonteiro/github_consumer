import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../user.dart';


class GithubAPI {
  static Future<List<User>> getAll(String topic) async {
    List<User> listUser = List();

    var url = 'https://api.github.com/search/repositories?q=topic:$topic';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var totalCount = jsonResponse['total_count'];
      var items = jsonResponse['items'];

      User user = User.fromJSON(items);

      print('Number of repositories about $topic: $totalCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return listUser;
  }
}