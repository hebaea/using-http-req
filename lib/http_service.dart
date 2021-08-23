import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'user_model.dart';

class HttpService {
  Future<List<User>> getUsers() async {
    Response res =
        await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<User> users = body
          .map(
            (dynamic item) => User.fromJson(item),
          )
          .toList();

      return users;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
