import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
