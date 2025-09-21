import 'package:flutter/material.dart';

class WeatherModel {
  final String? cityName;
  final double? temperature;
  final String? condition;
  final String? description;
  final int? humidity;
  final double? windSpeed;
  final int? pressure;
  final String? iconCode;
  final DateTime? dateTime;

  WeatherModel({
    this.cityName,
    this.temperature,
    this.condition,
    this.description,
    this.humidity,
    this.windSpeed,
    this.pressure,
    this.iconCode,
    this.dateTime,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'] as String?,
      temperature: (json['main']?['temp'] as num?)?.toDouble(),
      condition: json['weather']?[0]?['main'] as String?,
      description: json['weather']?[0]?['description'] as String?,
      humidity: json['main']?['humidity'] as int?,
      windSpeed: (json['wind']?['speed'] as num?)?.toDouble(),
      pressure: json['main']?['pressure'] as int?,
      iconCode: json['weather']?[0]?['icon'] as String?,
      dateTime: json['dt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000)
          : null,
    );
  }

  // Get weather icon URL with null safety
  String? get iconUrl => iconCode != null
      ? 'https://openweathermap.org/img/wn/$iconCode@2x.png'
      : null;

  // Get theme color based on weather condition with null safety
  Color get themeColor {
    switch (condition?.toLowerCase()) {
      case 'clear':
        return Colors.orange;
      case 'clouds':
        return Colors.blueGrey;
      case 'rain':
      case 'drizzle':
        return Colors.indigo;
      case 'thunderstorm':
        return Colors.deepPurple;
      case 'snow':
        return Colors.lightBlue;
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
      case 'sand':
      case 'ash':
      case 'squall':
      case 'tornado':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }
}
