# 🌦️ Weather App

A beautiful, responsive weather application built with **Flutter** that provides real-time weather information and forecasts for cities worldwide.

![Weather App Screenshot](https://via.placeholder.com/400x800?text=Weather+App+Screenshot)

---

## ✨ Features

* **Current Weather Display**: Shows temperature, weather conditions, humidity, wind speed, and pressure
* **5-Day Forecast**: Horizontally scrollable forecast cards for the next 5 days
* **City Search**: Search for weather information by city name
* **Dynamic UI**: Background and theme change based on weather conditions
* **Pull-to-Refresh**: Refresh weather data with a simple pull gesture
* **Error Handling**: Graceful handling of network errors and invalid locations

---

## ⚙️ Requirements

* Flutter SDK: `>=2.17.0`
* Dart: `>=2.17.0`
* OpenWeatherMap API Key (free)

---

## 📦 Dependencies

* [`provider: ^6.0.5`](https://pub.dev/packages/provider) - State management
* [`http: ^0.13.5`](https://pub.dev/packages/http) - HTTP requests
* [`intl: ^0.18.1`](https://pub.dev/packages/intl) - Date formatting
* [`flutter_spinkit: ^5.1.0`](https://pub.dev/packages/flutter_spinkit) - Loading indicators
* [`pull_to_refresh: ^2.0.0`](https://pub.dev/packages/pull_to_refresh) - Pull-to-refresh
* [`geolocator: ^9.0.2`](https://pub.dev/packages/geolocator) - Location services
* [`geocoding: ^2.1.0`](https://pub.dev/packages/geocoding) - Reverse geocoding

---

## 🚀 Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/weather_app.git
   cd weather_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Get an OpenWeatherMap API key**

   * Visit [OpenWeatherMap](https://openweathermap.org/)
   * Sign up for a free account
   * Navigate to the API keys section
   * Generate a new API key

4. **Add your API key**

   * Open `lib/services/weather_service.dart`
   * Replace:

     ```dart
     static const String apiKey = 'your_actual_api_key_here';
     ```

5. **Run the app**

   ```bash
   flutter run
   ```

---

## 📱 How to Use

* **On First Launch**:

  * The app will request location permission
  * If granted, it shows weather for your current location
  * If denied, it defaults to **London**

* **Viewing Weather**:

  * The home screen displays current weather conditions
  * Scroll horizontally to see the 5-day forecast
  * Pull down to refresh data

* **Searching for a City**:

  * Tap the **search icon** in the app bar
  * Enter a city name (e.g., `New York` or `Tokyo,JP`)
  * Press **search** or hit enter

---

## 🌍 Testing Cities

| City        | Country   | Search Query   |
| ----------- | --------- | -------------- |
| London      | UK        | London,GB      |
| New York    | USA       | New York,US    |
| Tokyo       | Japan     | Tokyo,JP       |
| Paris       | France    | Paris,FR       |
| Sydney      | Australia | Sydney,AU      |
| Dubai       | UAE       | Dubai,AE       |
| Singapore   | Singapore | Singapore,SG   |
| Toronto     | Canada    | Toronto,CA     |
| Los Angeles | USA       | Los Angeles,US |
| Chicago     | USA       | Chicago,US     |

---

## 📂 File Structure

```
lib/
 ├─ main.dart                   # App entry point
 ├─ services/
 │   └─ weather_service.dart     # API service for weather data
 ├─ models/
 │   └─ weather_model.dart       # Weather data model
 ├─ controllers/
 │   └─ weather_controller.dart  # State management
 ├─ screens/
 │   ├─ splash_screen.dart       # Initial splash screen
 │   ├─ home_screen.dart         # Main weather display
 │   └─ search_screen.dart       # City search functionality
 ├─ widgets/
 │   ├─ weather_card.dart        # Current weather display widget
 │   └─ forecast_card.dart       # Forecast item widget
 └─ utils/
     └─ theme_manager.dart       # App theme management
```

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

* Weather data from [OpenWeatherMap](https://openweathermap.org/)
* Icons from [OpenWeatherMap](https://openweathermap.org/weather-conditions)
* Animations from [LottieFiles](https://lottiefiles.com/)
