import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Spots extends StatefulWidget {
  Spots({Key key}) : super(key: key);
  @override
  _SpotsState createState() => _SpotsState();
}

class _SpotsState extends State<Spots> {
  Map data;
  List usersData;

  getUsers() async {
    http.Response response =
        await http.get('http://192.168.100.15:3000/api/users');
    data = json.decode(response.body);
    setState(() {
      usersData = data['users'];
    });
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView.builder(
        itemCount: usersData == null ? 0 : usersData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  
                  CircleAvatar(
                    backgroundImage: NetworkImage(usersData[index]['avatar']),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${usersData[index]['firstName']} ${usersData[index]['lastName']}",
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Hola"),
    ));
  }
}
