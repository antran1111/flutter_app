class Notes {
  List<Note> _notes;

  Notes.initializeNotes () {
    //a list of type <Note>
    _notes = List<Note>();
    _notes.add(Note('Wedding', 'You went to a wedding and tripped on a piece of paper and broke your back',false));
    _notes.add(Note('Office', 'Your sitting in an office but a shark came out of nowhere and bit you',false));
    _notes.add(Note('Birthday', 'Today is your birthday and all your friends are here to celebrate it with you',false));
    _notes.add(Note('Holiday', 'You went on a family holiday trip to the Phillipines and made a bunch of new friends',false));
    _notes.add(Note('Saturday', 'On Saturday\'s you drive to the beach to go play volleyball',false));
    _notes.add(Note('Sunday', 'On Sunday you go to Church to preach to your friends at church',false));
    _notes.add(Note('Work', 'It\'s your first day at work as a software engineer!',false));
    _notes.add(Note('Project', 'You just finished your first mobile application project on viral memes',false));
  }

  List<Note> get getNotes => _notes;
}


class Note {
  String _title;
  String _noteContent;
  bool _noteRead;

  Note(this._title,this._noteContent,this._noteRead);

  String get getTitle => _title;
  String get getNoteContent => _noteContent;
  bool get getReadState => _noteRead;
  //not sure what this does, but it appears that it sets the bool to true/false.
  set setReadState(bool readState) => this._noteRead = readState;
}