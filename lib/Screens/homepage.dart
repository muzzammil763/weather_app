import 'package:flutter/material.dart';
import 'package:weather_app/Models/weather_model.dart';
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
  WeatherModel? data;

  Future<void>? getData() async {
    data = await client.getCurrentWeather('george');
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
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                currentWeather(
                    Icons.wb_sunny, '${data?.temp}', '${data?.cityName}'),
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
                additionalInformation("${data?.wind}", "${data?.humidity}",
                    "${data?.pressure}", "${data?.feelsLike}"),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
