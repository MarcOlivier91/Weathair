import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:weatherapp/model/model.dart';

class WeatherApiClient {
  Future<WeatherModel> request() async {
    String url = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,relative_humidity_2m,surface_pressure,wind_speed_10m,wind_direction_10m&hourly=temperature_2m";
    Response response = await Dio().get(url);
    final parseData = jsonDecode(response.toString());
    final weather = WeatherModel.fromJson(parseData);
    return weather; 
  }
}