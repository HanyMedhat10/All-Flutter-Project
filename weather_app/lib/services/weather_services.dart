import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

// import 'package:http/http.dart' ;
class WeatherService {
  Future<WeatherModel?> getWeather({required String cityName}) async {
    String baseUrl = 'http://api.weatherapi.com/v1';
    String apiKey = '2aba918843ac401295f103054230701';
    WeatherModel? weather;
    try {
      Uri url = Uri.parse(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no');
      http.Response response = await http.get(url);
      //  Response response = await get(url);
      Map<String, dynamic> data = jsonDecode(response.body);
      //  dynamic data  = jsonDecode(response.body);
      weather = WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }
    // var jsonData = data['forecast']['forecastday'][0];
    // WeatherModel weather = WeatherModel(
    //     date: data['location']['localtime'],
    //     maxTemp: jsonData['maxtemp_c'],
    //     minTemp: jsonData['mintemp_c'],
    //     temp: jsonData['avgtemp_c'],
    //     weatherStateName: jsonData['condition']['text']);
    // String date = data['location']['localtime'];
    // String temp = data['forecast']['forecastday'][0]['avgtemp_c'];
    return weather;
    // print(data);
  }
}
