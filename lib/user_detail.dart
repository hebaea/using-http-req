import 'package:flutter/material.dart';
import 'user_model.dart';

class UserDetail extends StatelessWidget {
  final User user;

  UserDetail({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.email),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("ID"),
                        subtitle: Text("${user.id}"),
                      ),
                      ListTile(
                        title: Text("email"),
                        subtitle: Text(user.email),
                      ),
                      ListTile(
                        title: Text("Title"),
                        subtitle: Text(user.firstName),
                      ),
                      ListTile(
                        title: Text("Body"),
                        subtitle: Text(user.lastName),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
