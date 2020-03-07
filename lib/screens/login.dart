import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String numero = "";
  String firstName = "";
  String password = "";

    Future postUsers() async {
    var url = 'http://192.168.100.15:3000/api/user/create';
    Map user = {
      'firstName': 'Louisa',
      'lastName': 'Martinez',
      'avatar':
          'https://i.pinimg.com/564x/9b/25/dc/9b25dc32b223e763c3b2c5a58f84cc93.jpg'
    };
    var body = json.encode(user);
    var response = await http.post(url, headers: {"Content-Type": "application/json"}, body: body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

    @override
  void initState() {
    super.initState();    
   // postUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue[100],
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.network(
              "https://i.pinimg.com/564x/2a/1b/49/2a1b49b47e439be6d9f1103ad01f3243.jpg",
              fit: BoxFit.cover,
              color: Colors.blue[50],
              colorBlendMode: BlendMode.darken),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 225,),
                child: Text(
                  "Nombre",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.white.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ingrese su nombre',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        onSubmitted: (String str){
                          setState(() {
                            firstName = str;
                            debugPrint('firstName: $firstName');
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 225,),
                child: Text(
                  "Telefono",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.white.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ingrese su número telefonico',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                         onSubmitted: (String str){
                          setState(() {
                            numero = str;
                            debugPrint('numero: $numero');
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 215),
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.lock_open,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.white.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ingese su password',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                          onSubmitted: (String str){
                          setState(() {
                            password = str;
                            debugPrint('password: $password');
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        splashColor: null,
                        color: Colors.blue,
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            new Expanded(
                              child: Container(),
                            ),
                            new Transform.translate(
                              offset: Offset(15.0, 0.0),
                              child: new Container(
                                padding: const EdgeInsets.all(5.0),
                                child: FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(28.0)),
                                  splashColor: Colors.white,
                                  color: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        //este es el que hace que ya no regrese al login 
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil('/second', (Route<dynamic> route) => false);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      alignment: Alignment.center,
                      child: Text(
                        "DO YOU ALREADY HAVE AN ACCOUNT?",
                        style: TextStyle(color: Colors.white ),
                      ),
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
            ],
          ),
        ],
      ),
    );
  }
}
