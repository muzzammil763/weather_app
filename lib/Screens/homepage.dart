import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    data = await client.getCurrentWeather('karachi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7ffe6),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffd3ffd2),
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
            return ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 32),
                    currentWeather(
                      Icons.wb_sunny_rounded,
                      '${data?.temp}',
                      '${data?.cityName}',
                    ),
                    const SizedBox(height: 12),
                    const Divider(indent: 100, endIndent: 100, thickness: 1),
                    const SizedBox(height: 16),
                    Text(
                      "Additional Information",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    additionalInformation("${data?.wind}", "${data?.humidity}",
                        "${data?.pressure}", "${data?.feelsLike}"),
                  ],
                ),
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
