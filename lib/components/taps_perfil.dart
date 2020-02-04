import 'package:flutter/material.dart';

import '../screens/spots.dart';
import '../screens/perfil.dart';

class Taps extends StatefulWidget {
  State<StatefulWidget> createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  int currentTab = 0;
  final List<Widget> screens = [
    Spots(),
    Perfil(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Spots();

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(left:60.00, right:60,),
                onPressed: null,
                child: Text("Mis Spot's",
                    style: TextStyle(
                      color: Colors.red[200],
                    )),
                textColor: Colors.black,
                
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.red[200],
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(left:50, right:50,),
                onPressed: null,
                child: Text("Peculiaridad",
                    style: TextStyle(
                      color: Colors.red[200],
                    )),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.red[200],
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          )
        ]);
  }
}
