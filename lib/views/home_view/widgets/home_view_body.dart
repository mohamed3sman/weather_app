import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/shared/components/custom_button.dart';
import 'package:weather_app/views/weather_view/weather_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
            child: TextFormField(
              style: const TextStyle(color: whiteColor),
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const WeatherView();
              }));
            },
            text: 'Search Weather',
          ),
        ],
      ),
    );
  }
}
