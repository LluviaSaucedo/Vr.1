import 'package:flutter/material.dart';
import 'package:socialty/components/taps_perfil.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Header(
          backgroundAsset:
              'https://i.pinimg.com/564x/e8/dc/d5/e8dcd5c90e9b4ab64ee01e12f25a2ba5.jpg',
          userAsset:
              'https://i.pinimg.com/564x/9b/25/dc/9b25dc32b223e763c3b2c5a58f84cc93.jpg',
          userName: 'Emma',
        ),
        Taps()
      ],
    );
  }
}

class Header extends StatelessWidget {
  final double height;
  final String backgroundAsset;
  final String userAsset;
  final String userName;

  const Header({
    Key key,
    this.height = 150,
    @required this.backgroundAsset,
    @required this.userAsset,
    @required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(this.backgroundAsset), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          UserPhoto(
            assetImage: this.userAsset,
            size: 100,
          ),
          Text(
            '@${this.userName}',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class UserPhoto extends StatelessWidget {
  final String assetImage;
  final double size;

  const UserPhoto({
    Key key,
    @required this.assetImage,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(this.assetImage), fit: BoxFit.cover),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 3,
          )),
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}
