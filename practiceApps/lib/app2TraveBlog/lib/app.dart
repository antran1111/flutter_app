import 'package:flutter/material.dart';
import 'screen/location_detail.dart';
import 'style.dart';
import 'screen/locations.dart';

//krisdonia powerbank review
//71% of the charging powerbank lasted for 1 hour and 12 minutes
//it charged the laptop while in usage from 39% to 77% and then ran out

//create consts for routes
const LocationsRoute = '/';
const LocationsDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }


/*class App extends StatelessWidget {
  int tempID;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // home: LocationDetail(tempID), //create routes instead
    onGenerateRoute: _routes(),
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
  }*/

  RouteFactory _routes() {
    //return an actual function
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) { //name is part of route / or /locationdetail
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationsDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(textTheme: TextTheme(title: AppBarTextStyle)),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: BodyTextStyle,
        ));
  }
}

