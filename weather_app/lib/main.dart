import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controllers/weather_controller.dart';
import 'package:weather_app/screens/splash_screen.dart';
import 'package:weather_app/utils/theme_manager.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WeatherController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeManager(context).getTheme(),
      home: Banner(
        message: 'FlexZ',
        location: BannerLocation.topEnd,
        child: const SplashScreen(),
      ),
    );
  }
}
