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

import 'dart:math';

Set<int> lottoNumber() {
  final random = Random();
  final Set<int> lottoSet = {};
  //var num;

  while (lottoSet.length != 6) {
    //num = random.nextInt(45) + 1
    lottoSet.add(random.nextInt(45) + 1);
  }

  print('당첨번호');
  print(lottoSet.toList());

  return lottoSet;
}

Set<int> myNumber() {
  final random = Random();
  final Set<int> myNumSet = {};
  //var num;

  while (myNumSet.length != 6) {
    //num = random.nextInt(45) + 1
    myNumSet.add(random.nextInt(45) + 1);
  }
  print('내 추첨번호');
  print(myNumSet.toList());

  return myNumSet;

  //print('내 추첨번호');
  //print(myNumSet);

  //return myNumSet;
}

void checkNumber(lottoSet, myNumSet) {
  int match = 0;

  for (int lotto in lottoSet) {
    for (int myNum in myNumSet) {
      if (lotto == myNum) {
        match++;
        print('당첨번호: $myNum');
      }
      //print('로또번호 = $lotto');
      //print('내 추첨번호 = $myNum');
    }
  }
  print('$match개의 당첨번호가 있습니다.');
}

void main() {
  Set<int> lottoFinal = lottoNumber();
  Set<int> myFinal = myNumber();

  checkNumber(lottoFinal, myFinal);
}
