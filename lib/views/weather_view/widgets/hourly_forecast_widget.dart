import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/constants/constants.dart';

class HourlyForecastWidget extends StatelessWidget {
  const HourlyForecastWidget(
      {super.key,
      required this.time,
      required this.weather,
      required this.weatherImage});

  final String time;
  final String weather;
  final String weatherImage;

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
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              time,
              style: TextStyle(
                fontSize: 17.sp,
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              weatherImage,
              width: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weather,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\u00B0',
                  style: TextStyle(
                    fontSize: 30.sp,
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
