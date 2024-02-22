import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/Models/weather_model.dart';

class WeatherApi {
  final apiKey = dotenv.env['VAR_NAME'];
  Future<WeatherModel>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey&units=metric');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    return WeatherModel.fromJson(body);
  }
}
