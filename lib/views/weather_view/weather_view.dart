import 'package:flutter/material.dart';

import 'widgets/weather_view_body.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          const WeatherViewBody(),
        ],
      ),
    );
  }
}
