import 'package:flutter/material.dart';
import 'package:flutter_app_routetutorial01/main.dart';
import 'package:flutter_app_routetutorial01/util/notes.dart';
import 'util/constants.dart';
import 'screen/image.dart';

class DetailedNote extends StatefulWidget {
  Note selectedNote;

  DetailedNote(this.selectedNote);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailedNoteState(selectedNote);
  }
}

class DetailedNoteState extends State<DetailedNote> {
  Note selectedNote;

  DetailedNoteState(this.selectedNote);

   bool changeIcon = true;

  //this changes the bool of the selectedNote
  _handleReadCheckbox(bool readStatus) {
    this.setState(() {
      selectedNote.setReadState = readStatus;
    });
  }

  _handleReadIconBut (bool readStatus) {
    this.setState(() {
      readStatus ? (readStatus=false) : readStatus;
      selectedNote.setReadState = readStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedNote.getTitle),
        leading: MaterialButton(
          onPressed: () {
            Navigator.pop(context,selectedNote.getReadState);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: mainThemeColor,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                selectedNote.getNoteContent,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Do you like this?',
                  style: TextStyle(fontSize: 20.0),
                ),
               //i tried to replace the checkbox with an icon button but can't seem to get the ternary operators to trigger true/false and change the icon
               //IconButton(icon: Icon(changeIcon ? Icons.favorite : Icons.title),
                // onPressed: () {
               //  setState(() {
                   //if it's true make it false, if it's false make it true
                 //  _handleReadIconBut(changeIcon);
               //  });
             //    }//_handleReadCheckbox(selectedNote.getReadState),
              //  ),

               Checkbox(
                   value: selectedNote.getReadState,
                   onChanged: _handleReadCheckbox)
              ],
            ),
            LoadImage(),
          ],
        ),
      ),
    );
  }
}