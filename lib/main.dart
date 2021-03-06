import 'package:flutter/material.dart';
import 'story_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = new StoryBrain();

var storyText = storyBrain.getStory(0);
var choice1 = storyBrain.getChoice1(0);
var choice2 = storyBrain.getChoice2(0);

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    // new Text(storyText),
                    '${storyBrain.getStory(storyBrain.storyNumber)}',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    setState(() {
                      storyBrain.nextStory(1);
                      if (!storyBrain.buttonShouldBeVisible()) {
                        _onAlertButtonPressed(context);
                      }
                    });
                    //storyBrain.nextStory(1);
                  },
                  color: Colors.red,
                  child: Text(
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    'Choice 1: ${storyBrain.getChoice1(storyBrain.storyNumber)}',

                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.

                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: FlatButton(
                  onPressed: () {
                    //Choice 2 made by user.
                    //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.

                    setState(() {
                      storyBrain.nextStory(2);
                      print('storyNumber: ${storyBrain.storyNumber}');
                      if (!storyBrain.buttonShouldBeVisible()) {
                        _onAlertButtonPressed(context);
                      }
                    });

                    // storyBrain.nextStory(2);
                    //print('storyNumber: ${storyBrain.storyNumber}');
                  },
                  color: Colors.blue,
                  child: Text(
                    //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                    'Choice 2: ${storyBrain.getChoice2(storyBrain.storyNumber)}',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Destiny Awaits'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'images/background.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Text("This is a Text",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.
//use setState and insert variables that are changed into there
//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/

_onAlertButtonPressed(context) {
  Alert(
    context: context,
    type: AlertType.info,
    title: "Game Over!",
    desc: "Congratulations on finishing the game!.",
    buttons: [
      DialogButton(
        child: Text(
          "Return",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              backgroundColor: Colors.blueAccent),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}
