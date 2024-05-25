import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/model.dart';


class WeatherService {
  Future<CurrentWeather> getWeatherData() async {
    try {
      final uri = Uri.http('https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m&hourly=temperature_2m,relative_humidity_2m,rain,visibility,wind_speed_10m&timezone=Europe%2FLondon');
      final response = await http.get(uri);
      if(response.statusCode == 200) {
        return CurrentWeather.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Couldn't get weather data.");
      }
    } catch(e) {
      rethrow;
    }
  } 
}
