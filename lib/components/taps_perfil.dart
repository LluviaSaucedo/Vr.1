import 'package:flutter/material.dart';

class Taps extends StatefulWidget {
  State<StatefulWidget> createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
        tabs: [
          Tab(text: "Mis Spot's",icon: Icon(Icons.art_track)), 
          Tab(text: 'Insignias',icon: Icon(Icons.star_border)),
        ],
        indicatorColor: Colors.red[200]
      ),
    );
  }
}