import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationSelecter extends StatelessWidget {
  const LocationSelecter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7ffe6),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffd3ffd2),
        title: const Text(
          'Manage Locations',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                  ),
                ),
                hintText: 'Search for locations ..',
                hintStyle: const TextStyle(
                  color: Colors.black26,
                  fontSize: 13,
                ),
                filled: true,
                fillColor: const Color(0xffd3ffd2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
