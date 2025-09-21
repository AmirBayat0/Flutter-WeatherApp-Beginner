# 🌦️ Weather App

![Flutter](https://img.shields.io/badge/Flutter-3.13.0-blue) ![License](https://img.shields.io/badge/License-MIT-green)

A beautiful, responsive weather application built with **Flutter** that provides real-time weather information and forecasts for cities worldwide.

![Weather App Demo](assets/demo/weather_demo.gif)

---

## ✨ Features

| Feature                 | Status |
| ----------------------- | ------ |
| Current Weather Display | ✅      |
| 5-Day Forecast          | ✅      |
| City Search             | ✅      |
| Dynamic UI              | ✅      |
| Pull-to-Refresh         | ✅      |
| Error Handling          | ✅      |

---

## ✨ ScreenShots

<div align="center">

### ScreenShots
<p align="center">
  <img src="https://github.com/user-attachments/assets/751f937f-b06f-405e-9043-a03958d911ef" width="300" />
  <img src="https://github.com/user-attachments/assets/37b439e6-5771-4323-9bfe-fa8e95e218b8" width="300" />
  <img src="https://github.com/user-attachments/assets/9e1f4ca3-92e3-4871-8b6e-6bd8ed5ae5f7" width="300" />
  <img src="https://github.com/user-attachments/assets/3f0c3927-1e27-40b8-97bd-e581bbe817f9" width="300" />
  <img src="https://github.com/user-attachments/assets/d1f29096-5bfb-48a4-bd81-ab73d4485bf3" width="300" />
  <img src="https://github.com/user-attachments/assets/b6816688-d3de-4982-b1a0-3b7447980922" width="300" />
</p>


</div>


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

## 🛠️ Tech Stack

* Flutter & Dart
* OpenWeatherMap API
* Provider for state management

---

## 🤝 Contributing

Contributions are welcome! Please open an issue or submit a pull request.

---

## 📫 Contact

* Email: [amirbayat.dev@gmail.com](mailto:ymirbayat.dev@gmail.com)

---

## ⚠️ Known Issues / TODO

* Dark mode support coming soon
* More accurate location handling in rural areas

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

* Weather data from [OpenWeatherMap](https://openweathermap.org/)
* Icons from [OpenWeatherMap](https://openweathermap.org/weather-conditions)
