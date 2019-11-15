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
        backgroundColor: Colors.deepOrangeAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.blueAccent,
                backgroundImage: AssetImage('images/cslogo.JPG'),
              ),
              Card(
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                // padding: EdgeInsets.all(10.0),
                color: Colors.deepOrange.shade600,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  //removed row,widget, added ListTile
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Phone Number: Coming Soon!',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Literata'),
                  ),
                ),
              ),
              Card(
                //the email contents go here
                // padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: Colors.deepOrange.shade600,
                child: ListTile(
                  //removed row,widget, added ListTile
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Email : CSSuccessGamer@gmail.com',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Literata'),
                  ),
                ),
              ),
              Card(
                //your website goes here
                //padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: Colors.deepOrange.shade600,
                child: ListTile(
                  //removed row,widget, added ListTile
                  leading: Icon(
                    Icons.web_asset,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Url: Instagram.com/successgamer1',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Literata'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ); //so remember to material app ends with );
  }
}

/*
Row(
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
*/
/*
Row(children: <Widget>[
Icon(
Icons.web,
color: Colors.white,
),
SizedBox(
width: 10.0,
),
Text('Website : Instagram.com/SuccessGamer1'),
]),
*/
