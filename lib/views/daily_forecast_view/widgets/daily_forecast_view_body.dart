import 'package:flutter/material.dart';

import 'daily_weather_widget.dart';

class DailyForecastViewBody extends StatelessWidget {
  const DailyForecastViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const DailyWeatherWidget(),
    );
  }
}
