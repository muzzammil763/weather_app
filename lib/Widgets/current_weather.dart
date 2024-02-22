import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 65,
        ),
        const SizedBox(height: 8),
        Text(
          temp,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffd3ffd2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 24,
            ),
            child: Text(
              location,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
