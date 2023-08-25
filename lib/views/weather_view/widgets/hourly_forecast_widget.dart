import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

class HourlyForecastWidget extends StatelessWidget {
  const HourlyForecastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
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
            const Text(
              '12 AM',
              style: TextStyle(
                fontSize: 18,
                color: whiteColor,
                fontWeight: FontWeight.w300,
              ),
            ),
            Image.asset('assets/images/moon_cloud_mid_rain.png'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '19',
                  style: TextStyle(
                    fontSize: 22,
                    color: whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
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
