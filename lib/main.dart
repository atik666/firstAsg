import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Text.dart';
import 'TextControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> textList = [
    'This is my first app',
    'I am hopeful that it will work',
    'The text is supposed to change',
    'This is the last text'
  ];

  int _textPosition = 0;
 void incrementText(){
   setState(() {
     _textPosition < textList.length-1 ? _textPosition++ : _textPosition = 0;
   });
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('First Assignment')),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextList(textList, _textPosition),
              TextControl(incrementText)  
            ],
          ),
        ),
      ),
    );
  }
}
