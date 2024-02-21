import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/additional_information.dart';
import 'package:weather_app/Widgets/current_weather.dart';
import 'package:weather_app/Services/weather_api.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  WeatherApi client = WeatherApi();
  @override
  void initState() {
    super.initState();
    client.getCurrentWeather('lahore');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffeff6),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffffeff6),
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          currentWeather(Icons.wb_sunny, '25.5', 'Lahore'),
          const SizedBox(height: 12),
          const Divider(indent: 50, endIndent: 50, thickness: 2),
          const SizedBox(height: 12),
          const Text(
            "Additional Information",
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          additionalInformation("6.5", "70%", "1000", "25.5"),
        ],
      ),
    );
  }
}
