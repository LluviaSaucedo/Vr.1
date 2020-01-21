import 'package:flutter/material.dart';
import '../screens/explorar.dart';
import '../screens/spots.dart';
import '../screens/perfil.dart';

class Taps extends StatefulWidget {
  State<StatefulWidget> createState() => _TapsState();
}

class _TapsState extends State<Taps> {
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
      
      bottomNavigationBar: BottomAppBar(    

        shape: const CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            
            IconButton(
              icon: Icon(Icons.bubble_chart),
              color: Colors.red[300],
              tooltip: "Spot\'s",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              color: Colors.red[300],
              tooltip: "Perfil",
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
        foregroundColor: Colors.blue[300],
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
