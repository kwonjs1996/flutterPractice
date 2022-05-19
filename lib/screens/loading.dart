import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
//API 일련의 표준화된 명령어나 기능, 매개 역할자로써의 API(은행창구의 직원으로 생각하면 좋다
// key값을 요구한다)

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: Text(
            'Get my location',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
