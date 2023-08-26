import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

class DailyWeatherWidget extends StatelessWidget {
  const DailyWeatherWidget({
    super.key,
    required this.dayDegree,
    required this.dayHightDegree,
    required this.dayLowDegree,
    required this.cityName,
    required this.countryName,
    this.date,
  });

  final int? dayDegree;
  final int? dayHightDegree;
  final int? dayLowDegree;
  final String? date;
  final String? cityName;
  final String? countryName;

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
                        Row(
                          children: [
                            Text(
                              '$dayDegree',
                              style: const TextStyle(
                                fontSize: 60,
                                color: whiteColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
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
                          'H:$dayHightDegree\u00B0  L:$dayLowDegree\u00B0',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$cityName, $countryName',
                      style: const TextStyle(
                        fontSize: 19,
                        color: whiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '$date',
                      style: TextStyle(
                        fontSize: 16,
                        color: whiteColor.withOpacity(0.8),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
