import 'package:flutter/material.dart';

//define all styles that the app will be using

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const String FontNameDefault = 'Montserrat';

const AppBarTextStyle = TextStyle (
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w700,
  fontSize: MediumTextSize,
  color: Colors.lightGreen,
);

const TitleTextStyle = TextStyle (
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.black,
);

const BodyTextStyle = TextStyle (
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: BodyTextSize,
  color: Colors.black54, //black54 cus its special k
);