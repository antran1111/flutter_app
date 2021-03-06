import 'package:flutter/material.dart';
//https://fluttercrashcourse.com/blog/05-models
class TextSection extends StatelessWidget {
  //TextSection ({@required this.setColor});

  //final Color setColor;

  Color _color;
  final String _title;
  final String _body;

  //TextSection({this._title,this._body});
  TextSection(this._title, this._body);

  static const double _hPad = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
          child: Text(_title, style: Theme.of(context).textTheme.title),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
          child: Text(_body, style : Theme.of(context).textTheme.body1),
        ),
      ],
    );
  }
}
