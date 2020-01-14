import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Louisa Martinez',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Me gusta aprender de lo demás',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
      
          Icon(
            Icons.star,
            color: Colors.teal[500],
          ),
          Text('Calificación 9°'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.check, 'Califica'),
          _buildButtonColumn(color, Icons.add, 'Agregar'),
          _buildButtonColumn(color, Icons.share, 'Comparte'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Busco conocer mucha gente que le agrede aprender y enseñar',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Socialty',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Socialty'),
        ),
        body: ListView(
          children: [
            Image.network(
            'https://www.worldarcherycolombia.com/img/uploads/Captura2.JPG' ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
