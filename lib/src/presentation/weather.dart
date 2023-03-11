import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherData {
  final String city;
  final double temperature;
  final String description;
  final String icon;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.description,
    required this.icon,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      city: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'],
    );
  }
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  TextEditingController _cityController = TextEditingController();
  WeatherData? _weatherData;

  Future<void> _getWeather(String city) async {
    final apiKey = 'YOUR_API_KEY';
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        final jsonData = json.decode(response.body);
        _weatherData = WeatherData.fromJson(jsonData);
      });
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        backgroundColor: Color.fromRGBO(49, 160, 95, 1),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Comming Soon")
            // TextField(
            //   controller: _cityController,
            //   decoration: InputDecoration(
            //     labelText: 'Enter a city name',
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () => _getWeather(_cityController.text),
            //   child: Text('Get Weather'),
            // ),
            // if (_weatherData != null) ...[
            //   Text(_weatherData!.city),
            //   Text('${_weatherData!.temperature}°C'),
            //   Text(_weatherData!.description),
            //   Image.network(
            //     'https://openweathermap.org/img/w/${_weatherData!.icon}.png',
            //     width: 100,
            //     height: 100,
            //   ),
            // ],
          ],
        ),
      ),
    );
  }
}
