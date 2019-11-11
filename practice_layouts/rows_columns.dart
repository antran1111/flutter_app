/*flutter app
use row and columns
https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

*/

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//type in stless and will automatically create new StatelessWidget
//create a MyApp that returns the MaterialApp design and then in your main you can call that
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, //axisAlignment aligns to the children
        //mainAxisSize: MainAxisSize.min, //use this to adjust columns
        children: <Widget>[
          Container(
            height: 30.0,
            width: 100.0,
            color: Colors.orange,
            child: Text('Hello'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
            child: Text('Containers 2'),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.red,
            child: Text('Containers 3'),
          ),
          Container(
            //invisible container, can shift everything to the right if we use crossaxisalignment.end
            width: 100,
            height: 10.0,
          )
        ],
      )),
    )); //so remember to material app ends with );
  }
}
