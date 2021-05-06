import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('Menu principal'),
      ),
      body:Center(
        child: ListView(
        padding:EdgeInsets.symmetric(horizontal:8.0,vertical: 80),
        children: <Widget>[
          ElevatedButton(
            child: Text('A'),
            onPressed: () => Navigator.pushNamed(context, '/buttonA'),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[300],
              shape: StadiumBorder()
            )
          ),
          Divider(),
          ElevatedButton(
            child: Text('B'),
              onPressed: () => Navigator.pushNamed(context, '/buttonB'),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[300],
              shape: StadiumBorder()
            )
          ),
          Divider(),
          ElevatedButton(
            child: Text('C'),
            onPressed: () => Navigator.pushNamed(context, '/buttonC'),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[300],
              shape: StadiumBorder()
            )
          )
        ]
      ),
      ));
  }
}