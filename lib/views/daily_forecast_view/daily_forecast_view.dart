import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

import 'widgets/daily_forecast_view_body.dart';

class DailyForecastView extends StatelessWidget {
  const DailyForecastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
            ),
            color: whiteColor,
          ),
        ),
      ),
      body: const DailyForecastViewBody(),
    );
  }
}
