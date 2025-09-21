import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  // Replace with your OpenWeatherMap API key
  // Get your free API key from: https://openweathermap.org/api
  static const String apiKey = 'YOUR_API_KEY_HERE';
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';

  // Get current weather by city name
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    final url = Uri.parse(
      '$baseUrl/weather?q=$cityName&appid=$apiKey&units=metric',
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return WeatherModel.fromJson(jsonDecode(response.body));
      } else {
        final errorData = jsonDecode(response.body);
        throw Exception('Failed to load weather data: ${errorData['message']}');
      }
    } catch (e) {
      throw Exception('Failed to load weather data: $e');
    }
  }

  // Get 5-day forecast by city name
  Future<List<WeatherModel>> getFiveDayForecast(String cityName) async {
    final url = Uri.parse(
      '$baseUrl/forecast?q=$cityName&appid=$apiKey&units=metric',
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List forecastList = data['list'];

        // Filter to get one forecast per day (at noon)
        List<WeatherModel> dailyForecasts = [];
        for (var i = 0; i < forecastList.length; i += 8) {
          if (i < forecastList.length) {
            dailyForecasts.add(WeatherModel.fromJson(forecastList[i]));
          }
        }

        // Take only 5 days
        return dailyForecasts.take(5).toList();
      } else {
        final errorData = jsonDecode(response.body);
        throw Exception(
          'Failed to load forecast data: ${errorData['message']}',
        );
      }
    } catch (e) {
      throw Exception('Failed to load forecast data: $e');
    }
  }

  // Get weather by coordinates
  Future<WeatherModel> getWeatherByCoordinates(double lat, double lon) async {
    final url = Uri.parse(
      '$baseUrl/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric',
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return WeatherModel.fromJson(jsonDecode(response.body));
      } else {
        final errorData = jsonDecode(response.body);
        throw Exception('Failed to load weather data: ${errorData['message']}');
      }
    } catch (e) {
      throw Exception('Failed to load weather data: $e');
    }
  }
}
