import 'package:flutter/material.dart';
import 'screens/perfil.dart';
import 'screens/spots.dart';
import 'screens/explorar.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Explorar(),
    Spots(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Socialty')),
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          fixedColor: Colors.red[300],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Explorar'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart),
              title: Text("Spot's"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Mi Perfil'),
            )
          ],
        ));
  }
}
