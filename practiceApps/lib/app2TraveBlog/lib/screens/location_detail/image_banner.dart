import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assetPath;

  ImageBanner({@required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        //expand everything as long as height stays as set value
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(assetPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
