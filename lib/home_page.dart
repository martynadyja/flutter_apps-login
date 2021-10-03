import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final ash = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/ash.png'),
        ),
      ),
    );
    final welcome = Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
            'Witaj Ash',
            style: TextStyle(fontSize: 48.0, color: Colors.black),
        ),
    );
    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Złap je wszystkie!',
        style: TextStyle(fontSize: 20.0, color: Colors.black),
      ),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.greenAccent,
            Colors.lightGreenAccent,
          ]),
      ),
      child: Column(
        children: <Widget>[ash, welcome, lorem],
      ),
    );
    return Scaffold(
      body: body
    );
  }
}