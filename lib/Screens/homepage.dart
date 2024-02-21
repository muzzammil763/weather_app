import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/additional_information.dart';
import 'package:weather_app/Widgets/current_weather.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

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
          onPressed: () {
            Navigator.pop(context);
          },
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
