import 'package:flutter/material.dart';
import 'package:practice/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Sign in',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: _buildButton());
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ButtonTheme(
          height: 50,
          child: RaisedButton(
            color: Colors.white,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/dice1.png',
                  height: 40,
                ),
                Text(
                  'Log in with google',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(
                    'assets/dice1.png',
                    height: 40,
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MyButton(
            image: Image.asset(
              'assets/dice1.png',
              height: 40,
            ),
            text: Text(
              'Log in with google',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            color: Colors.white,
            radius: 4,
            onPressed: () {}),
        SizedBox(
          height: 8,
        ),
        ButtonTheme(
          height: 50,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/dice4.png',
                  height: 40,
                ),
                Text(
                  'Log in with facebook',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(
                    'assets/dice1.png',
                    height: 40,
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ButtonTheme(
          height: 50,
          child: RaisedButton(
            color: Colors.green,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/dice3.png',
                  height: 40,
                ),
                Text(
                  'Log in with Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(
                    'assets/dice3.png',
                    height: 40,
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}
