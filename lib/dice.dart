import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset('assets/dice$leftDice.png'),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Image.asset('assets/dice$rightDice.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            ButtonTheme(
              minWidth: 100,
              height: 60,
              child: RaisedButton(
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                color: Colors.orangeAccent,
                onPressed: () {
                  setState(
                    () {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                    },
                  );
                  showToast("Left dice: {$leftDice}, Right dice: {$rightDice}");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      textColor: Colors.black,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
