import 'package:flutter/material.dart';

class WeatherModel {
  final currentWeather;
  final hourly;
  WeatherModel({required this.currentWeather, required this.hourly});

  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    final currentWeather = data["currentWeather"] as Map<String, dynamic>;
    final hourly = data["hourly"] as Map<String, dynamic>;
    return WeatherModel(currentWeather: currentWeather, hourly: hourly);
  }
}

class CurrentWeather {
  final double temperature;
  final double windSpeed;
  final double relativeHumidity;
  final int windDirection;


  CurrentWeather({required this.temperature, required this.windSpeed, required this.relativeHumidity, required this.windDirection});

  factory CurrentWeather.fromJson(Map<String, dynamic> data) {

  final temperature = data["temperature"] as double;
  final windSpeed = data["windSpeed"] as double;
  final relativeHumidity = data["relativeHumidity"] as double;
  final windDirection = data["windDirection"] as int;

  return CurrentWeather(temperature: temperature, windSpeed: windSpeed, relativeHumidity: relativeHumidity, windDirection: windDirection);
  }
}

class HourlyCast {
  final List<String> time;
  final List<double> temperature;
  HourlyCast({required this.time, required this.temperature});

  factory HourlyCast.fromJson(Map<String, dynamic> data){
    final List<String> time = data["time"] as List<String>;
    final List<double> temperature = data["temperature"] as List<double>;

    return HourlyCast(time: time, temperature: temperature);
  }
}