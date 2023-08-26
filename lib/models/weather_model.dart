class WeatherModel {
  String cityName;
  String countryName;
  String updatedTime;
  String weatherIcon;
  double temp;
  double minTemp;
  double maxTemp;
  String weatherState;
  double windSpeed;
  String dayTwodate;
  String dayTwoweatherIcon;
  double dayTwotemp;
  double dayTwoHeighTemp;
  double dayTwoLowTemp;
  String dayTwoWeatherState;
  String dayThreedate;
  double dayThreeHeighTemp;
  double dayThreeLowTemp;
  String dayThreeWeatherState;
  String dayThreeweatherIcon;
  double dayThreetemp;
  double dayOne12AM;
  String dayOne12AMWeatherState;
  double dayOne2AM;
  String dayOne2AMWeatherState;
  double dayOne4AM;
  String dayOne4AMWeatherState;
  double dayOne6AM;
  String dayOne6AMWeatherState;
  double dayOne8AM;
  String dayOne8AMWeatherState;
  double dayOne10AM;
  String dayOne10AMWeatherState;
  double dayOne12PM;
  String dayOne12PMWeatherState;
  double dayOne2PM;
  String dayOne2PMWeatherState;
  double dayOne4PM;
  String dayOne4PMWeatherState;
  double dayOne6PM;
  String dayOne6PMWeatherState;
  double dayOne8PM;
  String dayOne8PMWeatherState;
  double dayOne10PM;
  String dayOne10PMWeatherState;

  WeatherModel({
    required this.cityName,
    required this.countryName,
    required this.updatedTime,
    required this.weatherIcon,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherState,
    required this.windSpeed,
    required this.dayTwodate,
    required this.dayTwoweatherIcon,
    required this.dayTwotemp,
    required this.dayTwoHeighTemp,
    required this.dayTwoLowTemp,
    required this.dayTwoWeatherState,
    required this.dayThreeweatherIcon,
    required this.dayThreetemp,
    required this.dayThreeHeighTemp,
    required this.dayThreeLowTemp,
    required this.dayThreeWeatherState,
    required this.dayThreedate,
    required this.dayOne12AM,
    required this.dayOne12AMWeatherState,
    required this.dayOne2AM,
    required this.dayOne2AMWeatherState,
    required this.dayOne4AM,
    required this.dayOne4AMWeatherState,
    required this.dayOne6AM,
    required this.dayOne6AMWeatherState,
    required this.dayOne8AM,
    required this.dayOne8AMWeatherState,
    required this.dayOne10AM,
    required this.dayOne10AMWeatherState,
    required this.dayOne12PM,
    required this.dayOne12PMWeatherState,
    required this.dayOne2PM,
    required this.dayOne2PMWeatherState,
    required this.dayOne4PM,
    required this.dayOne4PMWeatherState,
    required this.dayOne6PM,
    required this.dayOne6PMWeatherState,
    required this.dayOne8PM,
    required this.dayOne8PMWeatherState,
    required this.dayOne10PM,
    required this.dayOne10PMWeatherState,
  });

  factory WeatherModel.fromJson(dynamic data) {
    var dayOneJsondata = data['forecast']['forecastday'][0];
    var dayOne12AM = dayOneJsondata['hour'][0];
    var dayOne2AM = dayOneJsondata['hour'][2];
    var dayOne4AM = dayOneJsondata['hour'][4];
    var dayOne6AM = dayOneJsondata['hour'][6];
    var dayOne8AM = dayOneJsondata['hour'][8];
    var dayOne10AM = dayOneJsondata['hour'][10];
    var dayOne12PM = dayOneJsondata['hour'][12];
    var dayOne2PM = dayOneJsondata['hour'][14];
    var dayOne4PM = dayOneJsondata['hour'][16];
    var dayOne6PM = dayOneJsondata['hour'][18];
    var dayOne8PM = dayOneJsondata['hour'][20];
    var dayOne10PM = dayOneJsondata['hour'][22];
    var dayTwoJsondata = data['forecast']['forecastday'][1];
    var dayThreeJsondata = data['forecast']['forecastday'][2];

    return WeatherModel(
      cityName: data['location']['name'],
      countryName: data['location']['country'],
      updatedTime: data['location']['localtime'],
      weatherIcon: data['current']['condition']['icon'],
      temp: data['current']['temp_c'],
      minTemp: dayOneJsondata['day']['mintemp_c'],
      maxTemp: dayOneJsondata['day']['maxtemp_c'],
      weatherState: data['current']['condition']['text'],
      windSpeed: data['current']['wind_kph'],
      dayTwodate: dayTwoJsondata['date'],
      dayTwoweatherIcon: dayTwoJsondata['day']['condition']['icon'],
      dayTwotemp: dayTwoJsondata['day']['avgtemp_c'],
      dayTwoHeighTemp: dayTwoJsondata['day']['maxtemp_c'],
      dayTwoLowTemp: dayTwoJsondata['day']['mintemp_c'],
      dayTwoWeatherState: dayTwoJsondata['day']['condition']['text'],
      dayThreedate: dayThreeJsondata['date'],
      dayThreeweatherIcon: dayThreeJsondata['day']['condition']['icon'],
      dayThreetemp: dayThreeJsondata['day']['avgtemp_c'],
      dayThreeHeighTemp: dayThreeJsondata['day']['maxtemp_c'],
      dayThreeLowTemp: dayThreeJsondata['day']['mintemp_c'],
      dayThreeWeatherState: dayThreeJsondata['day']['condition']['text'],
      dayOne12AM: dayOne12AM['temp_c'],
      dayOne12AMWeatherState: dayOne12AM['condition']['text'],
      dayOne2AM: dayOne2AM['temp_c'],
      dayOne2AMWeatherState: dayOne2AM['condition']['text'],
      dayOne4AM: dayOne4AM['temp_c'],
      dayOne4AMWeatherState: dayOne4AM['condition']['text'],
      dayOne6AM: dayOne6AM['temp_c'],
      dayOne6AMWeatherState: dayOne6AM['condition']['text'],
      dayOne8AM: dayOne8AM['temp_c'],
      dayOne8AMWeatherState: dayOne8AM['condition']['text'],
      dayOne10AM: dayOne10AM['temp_c'],
      dayOne10AMWeatherState: dayOne10AM['condition']['text'],
      dayOne12PM: dayOne12PM['temp_c'],
      dayOne12PMWeatherState: dayOne12PM['condition']['text'],
      dayOne2PM: dayOne2PM['temp_c'],
      dayOne2PMWeatherState: dayOne2PM['condition']['text'],
      dayOne4PM: dayOne4PM['temp_c'],
      dayOne4PMWeatherState: dayOne4PM['condition']['text'],
      dayOne6PM: dayOne6PM['temp_c'],
      dayOne6PMWeatherState: dayOne6PM['condition']['text'],
      dayOne8PM: dayOne8PM['temp_c'],
      dayOne8PMWeatherState: dayOne8PM['condition']['text'],
      dayOne10PM: dayOne10PM['temp_c'],
      dayOne10PMWeatherState: dayOne10PM['condition']['text'],
    );
  }

  String getImage() {
    if (weatherState == 'Moderate rain' ||
        weatherState == 'Light drizzle' ||
        weatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (weatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (weatherState == 'Partly cloudy' || weatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (weatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (weatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (weatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (weatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayTwoGetImage() {
    if (dayTwoWeatherState == 'Moderate rain' ||
        dayTwoWeatherState == 'Light drizzle' ||
        dayTwoWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayTwoWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayTwoWeatherState == 'Partly cloudy' ||
        dayTwoWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayTwoWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayTwoWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayTwoWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayTwoWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayThreeGetImage() {
    if (dayThreeWeatherState == 'Moderate rain' ||
        dayThreeWeatherState == 'Light drizzle' ||
        dayThreeWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayThreeWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayThreeWeatherState == 'Partly cloudy' ||
        dayThreeWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayThreeWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayThreeWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayThreeWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayThreeWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne12AMGetImage() {
    if (dayOne12AMWeatherState == 'Moderate rain' ||
        dayOne12AMWeatherState == 'Light drizzle' ||
        dayOne12AMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne12AMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne12AMWeatherState == 'Partly cloudy' ||
        dayOne12AMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne12AMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne12AMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne12AMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne12AMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne2AMGetImage() {
    if (dayOne2AMWeatherState == 'Moderate rain' ||
        dayOne2AMWeatherState == 'Light drizzle' ||
        dayOne2AMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne2AMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne2AMWeatherState == 'Partly cloudy' ||
        dayOne2AMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne2AMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne2AMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne2AMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne2AMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne4AMGetImage() {
    if (dayOne4AMWeatherState == 'Moderate rain' ||
        dayOne4AMWeatherState == 'Light drizzle' ||
        dayOne4AMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne4AMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne4AMWeatherState == 'Partly cloudy' ||
        dayOne4AMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne4AMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne4AMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne4AMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne4AMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne6AMGetImage() {
    if (dayOne6AMWeatherState == 'Moderate rain' ||
        dayOne6AMWeatherState == 'Light drizzle' ||
        dayOne6AMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne6AMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne6AMWeatherState == 'Partly cloudy' ||
        dayOne6AMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne6AMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne6AMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne6AMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne6AMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne8AMGetImage() {
    if (dayOne8AMWeatherState == 'Moderate rain' ||
        dayOne8AMWeatherState == 'Light drizzle' ||
        dayOne8AMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne8AMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne8AMWeatherState == 'Partly cloudy' ||
        dayOne8AMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne8AMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne8AMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne8AMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne8AMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne10AMGetImage() {
    if (dayOne10AMWeatherState == 'Moderate rain' ||
        dayOne10AMWeatherState == 'Light drizzle' ||
        dayOne10AMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne10AMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne10AMWeatherState == 'Partly cloudy' ||
        dayOne10AMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne10AMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne10AMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne10AMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne10AMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne12PMGetImage() {
    if (dayOne12PMWeatherState == 'Moderate rain' ||
        dayOne12PMWeatherState == 'Light drizzle' ||
        dayOne12PMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne12PMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne12PMWeatherState == 'Partly cloudy' ||
        dayOne12PMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne12PMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne12PMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne12PMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne12PMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne2PMGetImage() {
    if (dayOne2PMWeatherState == 'Moderate rain' ||
        dayOne2PMWeatherState == 'Light drizzle' ||
        dayOne2PMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne2PMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne2PMWeatherState == 'Partly cloudy' ||
        dayOne2PMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne2PMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne2PMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne2PMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne2PMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne4PMGetImage() {
    if (dayOne4PMWeatherState == 'Moderate rain' ||
        dayOne4PMWeatherState == 'Light drizzle' ||
        dayOne4PMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne4PMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne4PMWeatherState == 'Partly cloudy' ||
        dayOne4PMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne4PMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne4PMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne4PMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne4PMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne6PMGetImage() {
    if (dayOne6PMWeatherState == 'Moderate rain' ||
        dayOne6PMWeatherState == 'Light drizzle' ||
        dayOne6PMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne6PMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne6PMWeatherState == 'Partly cloudy' ||
        dayOne6PMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne6PMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne6PMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne6PMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne6PMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne8PMGetImage() {
    if (dayOne8PMWeatherState == 'Moderate rain' ||
        dayOne8PMWeatherState == 'Light drizzle' ||
        dayOne8PMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne8PMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne8PMWeatherState == 'Partly cloudy' ||
        dayOne8PMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne8PMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne8PMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne8PMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne8PMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  String dayOne10PMGetImage() {
    if (dayOne10PMWeatherState == 'Moderate rain' ||
        dayOne10PMWeatherState == 'Light drizzle' ||
        dayOne10PMWeatherState == 'Light rain shower') {
      return 'assets/images/Sun cloud mid rain.png';
    } else if (dayOne10PMWeatherState == 'Patchy rain possible') {
      return 'assets/images/Moon cloud mid rain.png';
    } else if (dayOne10PMWeatherState == 'Partly cloudy' ||
        dayOne10PMWeatherState == 'Cloudy') {
      return 'assets/images/Moon cloud fast wind.png';
    } else if (dayOne10PMWeatherState == 'Sunny') {
      return 'assets/images/sun.png';
    } else if (dayOne10PMWeatherState == 'Overcast') {
      return 'assets/images/cloudy.png';
    } else if (dayOne10PMWeatherState == 'Moderate or heavy rain shower') {
      return 'assets/images/Sun_cloud_angled_rain.png';
    } else if (dayOne10PMWeatherState == 'Clear') {
      return 'assets/images/clear-sky.png';
    } else {
      return 'assets/images/Moon cloud fast wind.png';
    }
  }

  @override
  String toString() {
    return 'city = $cityName  , country = $countryName , temp = $temp';
  }
}
