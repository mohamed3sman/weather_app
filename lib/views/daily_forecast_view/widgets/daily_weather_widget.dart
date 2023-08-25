import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

class DailyWeatherWidget extends StatelessWidget {
  const DailyWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/Rectangle 1.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              '19',
                              style: TextStyle(
                                fontSize: 60,
                                color: whiteColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\u00B0',
                              style: TextStyle(
                                fontSize: 75,
                                color: whiteColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'H:24\u00B0  L:18\u00B0',
                          style: TextStyle(
                            fontSize: 16,
                            color: whiteColor.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Moon cloud mid rain.png',
                          width: MediaQuery.of(context).size.width * 0.33,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Montreal, Canada',
                    style: TextStyle(
                      fontSize: 22,
                      color: whiteColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Mid Rain',
                    style: TextStyle(
                      fontSize: 18,
                      color: whiteColor.withOpacity(0.8),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
