import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/Models/weather_model.dart';

class WeatherApi {
  Future<WeatherModel>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=9a4e7f7f7c7f8b7f8b7f8b7f8b7f8b7f8b7f8b7');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(WeatherModel.fromJson(body));
    return WeatherModel.fromJson(body);
  }
}
