import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/views/daily_forecast_view/daily_forecast_view.dart';

class DailyForecast extends StatelessWidget {
  const DailyForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        left: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Daily Forecast',
            style: TextStyle(
              fontSize: 20,
              color: whiteColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff5936b4),
                  Color(0xff362ab4),
                ],
              ),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DailyForecastView();
                }));
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 30,
              ),
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
