import 'package:flutter/material.dart';
// import 'package:practice/ScreenA.dart';
// import 'package:practice/ScreenB.dart';
// import 'package:practice/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  //BuildContext
  //Flutter 트리 구조상 MaterialApp 안에서 실행되어야 하기 때문에 builder함수를 통하여 안에 새로 추가를 하거나
  //새로운 Class(=MyPage)를 MaterialApp안에 추가하여 그 안에서 페이지를 라우트 시킨다.
  Widget build(BuildContext context) {
    return MaterialApp(home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScreenA()));
        },
        child: Text('Go to ScreenA'),
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
