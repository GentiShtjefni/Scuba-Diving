









// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// class DataService {
//   Future <WeatherResponse> getWeather (String city) async {
//     final queryParameters = {
//       'q': city,
//       'appId': 'd309f84eb0c9aa25b1640399fc835683',
//       'units': 'metric'
//     };
//     final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameters);
//
//     final response = await http.get(uri);
//     print(response.body);
//     final json = jsonDecode(response.body);
//     return WeatherResponse.fromJson(json);
//   }
// }
//
// class WeatherInfo {
//   final description;
//   final icon;
//
//   WeatherInfo({this.description, this.icon});
//
//   factory WeatherInfo.fromJson(Map<String, dynamic> json){
//     final description = json['description'];
//     final icon = json['icon'];
//     return WeatherInfo(description: description,icon: icon);
//   }
// }
//
// class Temperature {
//   final double temperature;
//
//   Temperature({this.temperature});
//
//   factory Temperature.fromJson(Map<String, dynamic> json){
//     final temperature = json['temp'];
//     return Temperature(temperature: temperature);
//   }
//
// }
// class WeatherResponse{
//   final String cityName;
//   final Temperature temperature;
//   final WeatherInfo weatherInfo;
//
//   WeatherResponse({this.weatherInfo,this.temperature,this.cityName});
//
//   factory WeatherResponse.fromJson(Map<String, dynamic> json){
//     final cityName = json['name'];
//     final temp = json['main'];
//     final tempInfo = Temperature.fromJson(temp);
//     final weatherjson = json['weather'][0];
//     final weather = WeatherInfo.fromJson(weatherjson);
//     return WeatherResponse(cityName: cityName, temperature: tempInfo, weatherInfo: weather);
//   }
//
//
// }




// final appId = 'd309f84eb0c9aa25b1640399fc835683';
// final city = 'Paris';