import 'package:flutter/material.dart';
import 'location.dart';
import 'style.dart';

//krisdonia powerbank review
//71% of the charging powerbank lasted for 1 hour and 12 minutes
//it charged the laptop while in usage from 39% to 77% and then ran out
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle), //appbartextstyle is a textstyle theme custom made in style.dart
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: BodyTextStyle,
        ),
      )
    );
  }
}
