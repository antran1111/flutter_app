//class that uploads images to the detailed_note section

import 'package:flutter/material.dart';

class Images {
  List<Image1> _image;

  Images.initializeNotes() {
    //a list of type <Note>
    _image = List<Image1>();
    _image.add(Image1('assets/images/car1.png'));
    _image.add(Image1('assets/images/car2.png'));
    _image.add(Image1('assets/images/car3.png'));
    _image.add(Image1('assets/images/car4.png'));
    _image.add(Image1('assets/images/car5.png'));
  }
}

class Image1 {
  String imageLocation;

  Image1(this.imageLocation);

  void loadImage() {
    //this class will load the asset image
  }
}

//create a container that will load image
class LoadImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      color: Colors.green,
    );
  }
}
//https://flutter.dev/docs/cookbook/images/fading-in-images
class LoadImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/images/car2.png',
        image: ('https://images.freeimages.com/images/small-previews/48d/marguerite-1372118.jpg'),//trying to load asset image but only lets load network image
      ),
    );
  }
}
