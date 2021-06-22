import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:project/mainDirectory/AppBar.dart';

class Meteo extends StatefulWidget {
  Meteo({Key key}) : super(key: key);

  @override
  _MeteoState createState() => _MeteoState();
}

class _MeteoState extends State<Meteo> {
  int temperature = 0;
  String location = 'San Francisco';
  int woeid = 2487956;
  String weather = 'clear';
  String image = '';
  String errorMessage = '';



  // String searchApiUrl =
  //     'https://www.metaweather.com/api/location/search/?query=';
  // String locationApiUrl = 'https://www.metaweather.com/api/location/';

  initState(){
    super.initState();
    fetchLocation();
    // fetchDay1();
  }

  Future<void> fetchSearch(String input) async {
    try {
      final queryParameters = {
        'query': input,
      };
      var searchResult = await http.get(Uri.https(
          'www.metaweather.com', '/api/location/search/', queryParameters));
      var result = json.decode(searchResult.body)[0];

      setState(() {
        location = result["title"];
        woeid = result["woeid"];
        errorMessage = '';
      });
    } catch (error) {
      setState(() {
        errorMessage = 'Sorry, we dont have info for that city'
            'try another one';
      });
    }
  }

  Future<void> fetchLocation() async {
    var locationResult = await http
        .get(Uri.https('www.metaweather.com', '/api/location/' + woeid.toString() +'/'));
    var result = json.decode(locationResult.body);
    var consolidatedWeather = result["consolidated_weather"];
    var data = consolidatedWeather[0];

    setState(() {
      temperature = data["the_temp"].toInt();
      weather = data["weather_state_name"];
      image = data["weather_state_abbr"];
    });
    // var data1 = consolidated_weather[1];
    // setState(() {
    //   temp1 = data1["the_temp"].toInt();
    //   weather1 = data1["weather_state_name"];
    //   image1 = data1["weather_state_abbr"];
    // });
  }
  // Future<void> fetchDay1() async {
  //   var locationResult = await http
  //       .get(Uri.https('www.metaweather.com', '/api/location/' + woeid.toString() +'/'));
  //   var result = json.decode(locationResult.body);
  //   var consolidatedWeather = result["consolidated_weather"];
  //   var data = consolidatedWeather[1];
  //
  //   setState(() {
  //     temp1 = data["the_temp"].toInt();
  //     weather1 = data["weather_state_name"];
  //     image1 = data["weather_state_abbr"];
  //   });
  // }

  // Future<void> fetchDaily() async {
  //   var today = DateTime.now();
  //   for (var i = 0; i < 7; i++) {
  //     var locationDailyResult = await http.get(Uri.https(
  //         'www.metaweather.com',
  //         '/api/location/ ' + woeid.toString() +
  //         '/' +
  //             new DateFormat('y/M/d')
  //                 .format(today.add(new Duration(days: i + 1)))
  //                 .toString() + '/'));
  //     var result = json.decode(locationDailyResult.body);
  //     var data = result[i];
  //     setState(() {
  //       dailyTemp[i] = data["the_temp"].toInt();
  //       dailyWeather[i] = data["weather_state_name"].toString();
  //       dailyImage[i] = data['weather_state_abbr'].toString();
  //     });
  //   }
  // }



  void onTextFieldSubmitted(String input) async {
    await fetchSearch(input);
    await fetchLocation();
    // await fetchDay1();

  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 0,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,
      child: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: new SafeArea(
          child: new ListView(
            children: [
              new Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: new Container(
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage('images/meteo_icon.png'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: new Text(
                    'Condition météorologiques',
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [
                    new TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        labelText: 'enter a city',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (String input) {
                        onTextFieldSubmitted(input);
                      },
                    ),
                    new Center(
                        child: Center(
                            child: Text(errorMessage,
                                style: TextStyle(color: Colors.redAccent))))
                  ],
                ),
              ),
              // new Center(
              //     child: new ElevatedButton(
              //   onPressed: () {},
              //   child: Text('Get Weather'),
              // )),
              Padding(padding: EdgeInsets.all(20)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Column(
                    children: [
                      Text(
                        location.toString(),
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                      Text(
                        temperature.toString() + ' \u2103',
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                      Text(
                        weather,
                        style: TextStyle(color: Colors.blue.shade900),
                      )
                    ],
                  ),
                  Container(
                      child: image == null
                          ? new Center(child: new CircularProgressIndicator())
                          : new Image.network(
                        'https://www.metaweather.com/static/img/weather/png/64/$image.png',
                        height: 80,
                        width: 70,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: new Row(
                    children: [
                      for (var i=0; i<7;i++)
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: forecastElement(
                            i+1,
                            temperature,
                            image,
                          ),
                        )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// void _search() async {
//   final response = await _dataService.getWeather(_cityTextController.text);
//   setState(() => _response = response);
// }
}

Widget forecastElement(daysFromNow, temperature, image) {
  var now = new DateTime.now();
  var oneDayFromNow = now.add(new Duration(days: daysFromNow));
  return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff59a5da),
              Color(0xff60af6c),
            ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: image == null
                    ? new Center(child: new CircularProgressIndicator())
                    : new Image.network(
                  'https://www.metaweather.com/static/img/weather/png/64/$image.png',
                  height: 80,
                  width: 70,
                )),
          ),
          new Text(new DateFormat.E().format(oneDayFromNow),
              style: TextStyle(color: Colors.white, fontSize: 25)),
          new Text(temperature.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25)),
          // new Text(weather,
          //     style: TextStyle(color: Colors.white, fontSize: 25)),
        ],
      ));
}
