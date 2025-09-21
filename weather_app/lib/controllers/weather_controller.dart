import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherController with ChangeNotifier {
  final WeatherService _weatherService = WeatherService();

  WeatherModel? _currentWeather;
  List<WeatherModel>? _forecast;
  bool _isLoading = false;
  String? _error;

  // Getters
  WeatherModel? get currentWeather => _currentWeather;
  List<WeatherModel>? get forecast => _forecast;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Get current weather and forecast for a city
  Future<void> getWeatherData(String cityName) async {
    _setLoading(true);
    _setError(null);

    try {
      // Get current weather
      final weather = await _weatherService.getCurrentWeather(cityName);
      _currentWeather = weather;

      // Get 5-day forecast
      final forecast = await _weatherService.getFiveDayForecast(cityName);
      _forecast = forecast;

      notifyListeners();
    } catch (e) {
      _setError(e.toString());
    } finally {
      _setLoading(false);
    }
  }

  // Get weather by current location
  Future<void> getWeatherByCurrentLocation() async {
    _setLoading(true);
    _setError(null);

    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw Exception('Location services are disabled');
      }

      // Check location permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw Exception('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw Exception('Location permissions are permanently denied');
      }

      // Get current position
      final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // Get weather by coordinates
      final weather = await _weatherService.getWeatherByCoordinates(
        position.latitude,
        position.longitude,
      );
      _currentWeather = weather;

      // Get 5-day forecast
      final forecast = await _weatherService.getFiveDayForecast(
        weather.cityName!,
      );
      _forecast = forecast;

      notifyListeners();
    } catch (e) {
      _setError(e.toString());
    } finally {
      _setLoading(false);
    }
  }

  // Refresh weather data
  Future<void> refreshWeatherData() async {
    if (_currentWeather != null) {
      await getWeatherData(_currentWeather!.cityName!);
    }
  }

  // Set loading state
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // Set error state
  void _setError(String? error) {
    _error = error;
    notifyListeners();
  }

  // Clear error
  void clearError() {
    _error = null;
    notifyListeners();
  }
}
