import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

import 'weather_container.dart';

class WeatherViewBody extends StatelessWidget {
  const WeatherViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                ],
              ),
            ),
            const Text(
              'Montreal',
              style: TextStyle(
                fontSize: 45,
                color: whiteColor,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '19',
                  style: TextStyle(
                    fontSize: 60,
                    color: whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
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
              'Mostly Clear',
              style: TextStyle(
                fontSize: 22,
                color: whiteColor.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'H:24\u00B0  L:18\u00B0',
              style: TextStyle(
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
