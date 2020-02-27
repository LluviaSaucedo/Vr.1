import 'package:flutter/material.dart';
import 'package:socialty/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white,);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nombre",
          fillColor: Colors.white,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[200],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          }, 
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, 
                fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.network("https://i.pinimg.com/564x/2a/1b/49/2a1b49b47e439be6d9f1103ad01f3243.jpg",
          fit: BoxFit.cover,
          color: Colors.blue[100],
          colorBlendMode: BlendMode.darken),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                SizedBox(height: 45 ),
                emailField,
                SizedBox(height: 35),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
