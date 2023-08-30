import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/providers/weather_provider.dart';

import 'weather_container.dart';

class WeatherViewBody extends StatefulWidget {
  const WeatherViewBody({super.key});

  @override
  State<WeatherViewBody> createState() => _WeatherViewBodyState();
}

class _WeatherViewBodyState extends State<WeatherViewBody> {
  @override
  Widget build(BuildContext context) {
    var weatherData = Provider.of<WeatherProvider>(context).weatherData;
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.height * 0.07),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff3658b1),
                          Color(0xffc159ec),
                        ],
                      ),
                    ),
                    child: IconButton(
                      onPressed: () async {
                        weatherData = null;
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 28.sp,
                      ),
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${weatherData?.cityName}',
              style: TextStyle(
                fontSize: 40.sp,
                color: whiteColor,
                fontWeight: FontWeight.w300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${weatherData?.temp.toInt()}',
                  style: TextStyle(
                    fontSize: 53.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  '\u00B0',
                  style: TextStyle(
                    fontSize: 65.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Text(
              '${weatherData?.weatherState}',
              style: TextStyle(
                fontSize: 20.sp,
                color: whiteColor.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'H:${weatherData?.maxTemp.toInt()}\u00B0  L:${weatherData?.minTemp.toInt()}\u00B0',
              style: TextStyle(
                fontSize: 18.sp,
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.012,
            ),
            Image.asset(
              'assets/images/house.png',
              height: MediaQuery.of(context).size.height * 0.42,
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            WeatherContainer(),
          ],
        ),
      ],
    );
  }
}
