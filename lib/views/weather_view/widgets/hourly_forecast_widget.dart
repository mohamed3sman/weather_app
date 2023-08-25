import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

class HourlyForecastWidget extends StatelessWidget {
  const HourlyForecastWidget(
      {super.key, required this.time, required this.weather});

  final String time;
  final String weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.17,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff5936b4),
              Color(0xff362ab4),
            ],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 19,
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset('assets/images/moon_cloud_mid_rain.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weather,
                  style: const TextStyle(
                    fontSize: 22,
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  '\u00B0',
                  style: TextStyle(
                    fontSize: 35,
                    color: whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
