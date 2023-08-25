import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'daily_forecast.dart';
import 'hourly_forecast_widget.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.85,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.39,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 15,
        ),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(
              50,
            ),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff365bb1),
              Color(0xffc159ec),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff2e3351),
                    Color(0xff1c1b33),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Hourly Forecast',
              style: TextStyle(
                fontSize: 20,
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const HourlyForecastWidget(),
              ),
            ),
            const Spacer(),
            const DailyForecast(),
          ],
        ),
      ),
    );
  }
}
