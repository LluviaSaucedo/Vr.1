import 'package:flutter/material.dart';

class Taps extends StatefulWidget {
  State<StatefulWidget> createState() => _TapsState();
}

class _TapsState extends State<Taps> {
   int currentTab = 0; 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: new Scaffold(
          floatingActionButton: BottomAppBar(
            child: TabBar(
              tabs: [
                Tab(
                icon: Icon(Icons.school),
              ),
                Tab(
                icon: Icon(Icons.home),
              ),
              ])
              ),
          body: TabBarView(children: [
            new Container(
              height: 100,
              color: Colors.redAccent,
              child: Center(
                child: Text(
                  'Hi from School',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            new Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  'Hi from home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]
         ),
       )
    );
  }
}
