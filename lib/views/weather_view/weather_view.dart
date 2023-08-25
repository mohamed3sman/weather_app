import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/views/home_view/home_view.dart';

import 'widgets/weather_view_body.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherData = Provider.of<WeatherProvider>(context).weatherData;

    return Scaffold(
      body: weatherData == null
          ? const HomeView()
          : Stack(
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
