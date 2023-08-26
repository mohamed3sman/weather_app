import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'daily_forecast.dart';
import 'hourly_forecast_widget.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherData = Provider.of<WeatherProvider>(context).weatherData;

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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HourlyForecastWidget(
                    time: '12 AM',
                    weather: '${weatherData?.dayOne12AM.toInt()}',
                    weatherImage: weatherData!.dayOne12AMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '2 AM',
                    weather: '${weatherData.dayOne2AM.toInt()}',
                    weatherImage: weatherData.dayOne2AMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '4 AM',
                    weather: '${weatherData.dayOne4AM.toInt()}',
                    weatherImage: weatherData.dayOne4AMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '6 AM',
                    weather: '${weatherData.dayOne6AM.toInt()}',
                    weatherImage: weatherData.dayOne6AMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '8 AM',
                    weather: '${weatherData.dayOne8AM.toInt()}',
                    weatherImage: weatherData.dayOne8AMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '10 AM',
                    weather: '${weatherData.dayOne10AM.toInt()}',
                    weatherImage: weatherData.dayOne10AMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '12 PM',
                    weather: '${weatherData.dayOne12PM.toInt()}',
                    weatherImage: weatherData.dayOne12PMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '2 PM',
                    weather: '${weatherData.dayOne2PM.toInt()}',
                    weatherImage: weatherData.dayOne2PMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '4 PM',
                    weather: '${weatherData.dayOne4PM.toInt()}',
                    weatherImage: weatherData.dayOne4PMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '6 PM',
                    weather: '${weatherData.dayOne6PM.toInt()}',
                    weatherImage: weatherData.dayOne6PMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '8 PM',
                    weather: '${weatherData.dayOne8PM.toInt()}',
                    weatherImage: weatherData.dayOne8PMGetImage(),
                  ),
                  HourlyForecastWidget(
                    time: '10 PM',
                    weather: '${weatherData.dayOne10PM.toInt()}',
                    weatherImage: weatherData.dayOne10PMGetImage(),
                  ),
                ],
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
