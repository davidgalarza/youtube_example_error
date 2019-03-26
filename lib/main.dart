import 'package:flutter/material.dart';
import './YoutubePage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: <String, WidgetBuilder>{
          '/youtube': (BuildContext context) => new YoutubePage(),
        },
        home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Youtube player')),
      body: Center(
        child: Column(children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/youtube');
            },
            child: Text('Open Video'),
          ),
        ]),
      ),
    );
  }
}

