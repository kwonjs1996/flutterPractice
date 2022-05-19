import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//API 일련의 표준화된 명령어나 기능, 매개 역할자로써의 API(은행창구의 직원으로 생각하면 좋다
// key값을 요구한다)

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    fetchData();
  }

  void getLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(position);
    } catch (e) {
      print('There was a problem with the internet connection.');
    }
  }

  void fetchData() async {
    http.Response response = await http
        .get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?'
            'q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
    if (response.statusCode == 200) {
      String jsonData = response.body;
      //jsonDecode 의 값은 Dynamic 이기때문에 var로 변수를 선언해준다.
      //안에 들어있는 데이터가 어떤 형태인지 모르기 때문에
      var myJson = jsonDecode(jsonData)['weather'][0]['description'];
      print(myJson);
      var wind = jsonDecode(jsonData)['wind']['speed'];
      print('wind speed is $wind');
      var id = jsonDecode(jsonData)['id'];
      print(id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: null,
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
