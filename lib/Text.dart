import 'package:flutter/material.dart';

class TextList extends StatelessWidget {
  final List text;
  final int textIndex;
  TextList(this.text, this.textIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text[textIndex],
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
