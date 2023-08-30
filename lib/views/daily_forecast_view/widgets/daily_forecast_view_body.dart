import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'daily_weather_widget.dart';

class DailyForecastViewBody extends StatelessWidget {
  const DailyForecastViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherData = Provider.of<WeatherProvider>(context).weatherData;

    return ListView(
      children: [
        DailyWeatherWidget(
          date: weatherData?.dayTwodate,
          dayDegree: weatherData?.dayTwotemp.toInt(),
          dayHightDegree: weatherData?.dayTwoHeighTemp.toInt(),
          dayLowDegree: weatherData?.dayTwoLowTemp.toInt(),
          cityName: weatherData?.cityName,
          countryName: weatherData?.countryName,
          weatherImage: weatherData?.dayTwoGetImage(),
        ),
        DailyWeatherWidget(
          date: weatherData?.dayThreedate,
          dayDegree: weatherData?.dayThreetemp.toInt(),
          dayHightDegree: weatherData?.dayThreeHeighTemp.toInt(),
          dayLowDegree: weatherData?.dayThreeLowTemp.toInt(),
          cityName: weatherData?.cityName,
          countryName: weatherData?.countryName,
          weatherImage: weatherData?.dayThreeGetImage(),
        ),
      ],
    );
  }
}
