import 'package:flutter/material.dart';
// import 'package:practice/ScreenA.dart';
// import 'package:practice/ScreenB.dart';
// import 'package:practice/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  //ScaffoldMessenger 기존의 builder로 추가하여 위로 찾아 올라가는 방식의 단점을 고쳐서
  //모든 Scaffold를 자식으로 가진 상태에서 Snackbar를 구현 할 수 있게 한다.
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Messenger'),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Like a new Snack bar!'),
              duration: Duration(seconds: 5),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
              ),
            ),
          );
        },
        child: Icon(Icons.thumb_up),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: Text('Go to the second page'),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Text(
          '"좋아요가 추가되었습니다."',
          style: TextStyle(
            fontSize: 20,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '"좋아요"를 취소하시겠습니까?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.redAccent,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('"좋아요"가 취소되었습니다'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: Text('취소하기'))
              ],
            ),
          );
        }),
      ),
    );
  }
}
