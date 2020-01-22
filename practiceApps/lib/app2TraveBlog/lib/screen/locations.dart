// locations/locations.dart

import 'package:flutter/material.dart';
import 'package:flutterstudy02/app.dart';
import 'package:flutterstudy02/models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                onTap: () => _onLocationTap(context, location.id),
                child: Container(child: Text(location.name))))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    //navigate
    //arguments are a map type, remember what key you made - "id"
    Navigator.pushNamed(context, LocationsDetailRoute,
        arguments: {"id": locationID});
  }
}
