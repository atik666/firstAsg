import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function incrementText;

  TextControl(this.incrementText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: RaisedButton(
        color: Colors.lightBlue,
        textColor: Colors.white,
        child: Text('Press here!',
        style: TextStyle(
          fontSize: 20,
        ),),
        onPressed: incrementText,
      ),
    );
  }
}
