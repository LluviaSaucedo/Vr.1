import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<User> fetchUser() async {
  http.Response response =
      await http.get('http://192.168.100.15:3000/prueba');
     debugPrint(json.decode(response.body));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return User.fromJson(json.decode(response.body));
    
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load User');
  }
}

class User {
  final int id;
  final String email;
  final String password;
  final String firstName;
  final String lastName;
  final String title;
  final String primaryTelephone;
  final String jobTitle;

  User({
    this.id, 
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.title,
    this.primaryTelephone,
    this.jobTitle,
    });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      password: json['password'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      title: json['title'],
      primaryTelephone: json['primaryTelephone'],
      jobTitle: json['jobTitle'],
    );
  }
}

class Spots extends StatefulWidget {
  Spots({Key key}) : super(key: key);
  @override
  _SpotsState createState() => _SpotsState();
}

class _SpotsState extends State<Spots> {
  Future<User> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: FutureBuilder<User>(
            future: futureUser,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.email);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      );
  }
}