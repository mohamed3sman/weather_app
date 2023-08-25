import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/shared/components/custom_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Sun_cloud_angled_rain.png',
            width: 250,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              cursorColor: whiteColor,
              style: const TextStyle(color: whiteColor, fontSize: 20),
              onChanged: (data) {
                cityName = data;
              },
              onSubmitted: (data) async {
                cityName = data;
                WeatherService service = WeatherService();
                service.getWeather(cityName: cityName!);
                WeatherModel? weather =
                    await service.getWeather(cityName: cityName!);
                Provider.of<WeatherProvider>(context, listen: false)
                    .weatherData = weather;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: whiteColor,
                      width: 2,
                    )),
                labelText: 'Search a city',
                labelStyle: const TextStyle(
                  fontSize: 22,
                  color: whiteColor,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: whiteColor,
                      width: 2,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: whiteColor,
                      width: 2,
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomMaterialButton(
            onPressed: () async {
              WeatherService service = WeatherService();
              service.getWeather(cityName: cityName!);
              WeatherModel? weather =
                  await service.getWeather(cityName: cityName!);
              Provider.of<WeatherProvider>(context, listen: false).weatherData =
                  weather;
            },
            text: 'Search Weather',
          ),
        ],
      ),
    );
  }
}
