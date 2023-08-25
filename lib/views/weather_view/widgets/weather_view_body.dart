import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.only(left: 30, top: 60),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      gradient: LinearGradient(
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
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 30,
                      ),
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${weatherData?.cityName}',
              style: const TextStyle(
                fontSize: 45,
                color: whiteColor,
                fontWeight: FontWeight.w300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${weatherData?.temp.toInt()}',
                  style: const TextStyle(
                    fontSize: 60,
                    color: whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Text(
                  '\u00B0',
                  style: TextStyle(
                    fontSize: 75,
                    color: whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Text(
              '${weatherData?.weatherState}',
              style: TextStyle(
                fontSize: 22,
                color: whiteColor.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'H:${weatherData?.maxTemp.toInt()}\u00B0  L:${weatherData?.minTemp.toInt()}\u00B0',
              style: const TextStyle(
                fontSize: 20,
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/house.png',
              height: 350,
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
