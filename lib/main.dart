import 'package:flutter/material.dart';
// import 'package:practice/ScreenA.dart';
// import 'package:practice/ScreenB.dart';
// import 'package:practice/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  //BuildContext
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ScreenA()));
          },
          child: Text('Go to ScreenA'),
        ),
      ),
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hi, there!'),
      ),
    );
  }
}
