import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'user_model.dart';

class HttpService {
  Future<List<User>> getUsers() async {
    Response res =
        await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body);

      return List<User>.from(body['data'].map((e) => User.fromJson(e)));
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
