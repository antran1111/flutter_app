import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //children is a list []
              ImageBanner(assetPath: 'assets/images/photo1.png'),
              TextSection("HelloKitty No", "13232"),
              TextSection("Smile Whaler", "234343"),
              TextSection("Farmer Jacker Cars", "33434"),
            ],
          )),
    );
  }
}
