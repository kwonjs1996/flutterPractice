import 'package:flutter/material.dart';
import 'package:practice/data/my_location.dart';
import 'package:practice/data/network.dart';
import 'package:practice/data/network.dart';

const apikey = '0f7997b3185717b37edf95fcc83b3381';
//API 일련의 표준화된 명령어나 기능, 매개 역할자로써의 API(은행창구의 직원으로 생각하면 좋다
// key값을 요구한다)

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double? latitude3;
  double? longitude3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
    //MyLocation myLocation = MyLocation();을 사용하여 인스턴스를 만들어준다.
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;
    print(latitude3);
    print(longitude3);

    Network network = Network('https://api.openweathermap.org/data/2.5/weather?'
        'lat=$latitude3&lon=$longitude3&appid=$apikey');

    var weatherData = await network.getJsonData();
    print(weatherData);
  }

  // void fetchData() async {
  //
  //     //jsonDecode 의 값은 Dynamic 이기때문에 var로 변수를 선언해준다.
  //     //안에 들어있는 데이터가 어떤 형태인지 모르기 때문에
  //     var parsingData = jsonDecode(jsonData);
  //     var myJson = parsingData['weather'][0]['description'];
  //     print(myJson);
  //     var wind = parsingData['wind']['speed'];
  //     print('wind speed is $wind');
  //     var id = parsingData['id'];
  //     print(id);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

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
