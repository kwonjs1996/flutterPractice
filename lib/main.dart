// import 'package:flutter/material.dart';
//
// import 'login_app/login.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login app',
//       theme: ThemeData(primarySwatch: Colors.grey),
//       home: LogIn(),
//     );
//   }
// }

//전위연산자, 후위연산자

// ++i = i+1부터 시작 , i++ = i부터 시작

List<int> lottoNumber() {
  var number = (List<int>.generate(45, (i) => ++i)..shuffle()).sublist(0, 6);

  print('당첨번호');
  print(number);

  return number;
}

List<int> myNumber() {
  var number2 = (List<int>.generate(45, (i) => i + 1)..shuffle()).sublist(0, 6);

  print('내 추첨번호');
  print(number2);

  return number2;

  //print('내 추첨번호');
  //print(myNumSet);

  //return myNumSet;
}

void checkNumber(List<int> number, List<int> number2) {
  int match = 0;

  for (int lotto in number) {
    for (int myNum in number2) {
      if (lotto == myNum) {
        match++;
        print('당첨번호: $lotto');
      }
      //print('로또번호 = $lotto');
      //print('내 추첨번호 = $myNum');
    }
  }
  print('$match개의 당첨번호가 있습니다.');
}

void main() {
  List<int> lottoFinal = lottoNumber();
  List<int> myFinal = myNumber();

  checkNumber(lottoFinal, myFinal);
}
