import 'package:flutter/material.dart';
import 'main2.dart';

void main() => runApp(MyApp2(
));

class MyHomePage extends StatelessWidget {
  MyHomePage({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySmileyPage(
        title: 'Try to smile', //title is set as smile here
      ),
      );

  }
}

class MySmileyPage extends StatelessWidget {
  MySmileyPage({Key key, @required this.title}) : super(key: key);
  final String title; //the title is required when creating this widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text(this.title), ),
      body: Center( child: Image.asset("assets/smileyt.jpg")),
    );
  }
}
