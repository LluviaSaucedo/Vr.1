import 'package:flutter/material.dart';
import 'package:socialty/home.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de navegacion',
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.red[50],
      ),
    );
  }
}
