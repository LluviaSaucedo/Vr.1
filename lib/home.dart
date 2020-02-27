import 'package:flutter/material.dart';
import 'package:socialty/components/camara.dart';
import 'screens/perfil.dart';
import 'screens/spots.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0; 
  final List<Widget> screens = [
    Spots(),
    Perfil(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Spots(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Socialty')),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Captura un video',
        child: Icon(Icons.add, size: 35,),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red[100],
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OpenCamera()),
            );
          },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(            
                children: <Widget>[
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Spots(); 
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.bubble_chart,
                          color: currentTab == 0 ? Colors.red[300] : Colors.grey,
                        ),
                        Text(
                          "Spot's",
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Perfil(); 
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 2 ? Colors.red[300] : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.black : Colors.grey,
                           ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}