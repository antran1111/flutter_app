import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var userAvatarUrl =
    'https://i.pinimg.com/originals/e5/33/49/e53349854de2486596a3c8c8897157d7.jpg';
var image2 = 'images/pok2.JPG';

//type in stless and will automatically create new StatelessWidget
//create a MyApp that returns the MaterialApp design and then in your main you can call that
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.blueAccent,
                backgroundImage: AssetImage('images/pok2.JPG'),
              ),
              Container(
                color: Colors.red,
                child: Text(
                  'CS Success Gamer',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Professional Meme Creator',
                style: TextStyle(
                    fontFamily: 'Literata',
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.teal,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Phone Number: 1-800-GETMEMES'),
                  ],
                ),
              ),
              Container(
                //the email contents go here
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: Colors.teal,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Email : CSSuccessGamer@gmail.com'),
                  ],
                ),
              ),
              Container(
                //your website goes here
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: Colors.teal,
                child: Row(children: <Widget>[
                  Icon(
                    Icons.web,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Website : Instagram.com/SuccessGamer1'),
                ]),
              ),
            ],
          ),
        ),
      ),
    ); //so remember to material app ends with );
  }
}
