import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';
import 'package:flutterstudy02/models/location.dart';

class LocationDetail extends StatelessWidget {

  final int _locationID;
  LocationDetail (this._locationID);

  @override
  Widget build(BuildContext context) {

   final location = Location.fetchByID(_locationID);

    final locations = Location.fetchAll();
   // final location = locations.first;

    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
              title: Text(location.name),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //children is a list []
                //ImageBanner(assetPath: 'assets/images/japan2.png'),
               //make list of widgets instead of TextSection
               // TextSection("HelloKitty No", "13232"),
                //TextSection("Smile Whaler", "234343"),
                //TextSection("Farmer Jacker Cars", "33434"),

                ImageBanner(assetPath: location.imagePath),

                //use cascades to add into the list (cascades = two ..)

              ].. addAll(textSections(location)),
            ),
      ),
    );
}

//this will return an iterable list
  List<Widget> textSections (Location location) {
    //notes, will give null iterator error if you do  not return anything

    return
    location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}
