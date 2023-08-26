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
  double dayOne2AM;
  double dayOne4AM;
  double dayOne6AM;
  double dayOne8AM;
  double dayOne10AM;
  double dayOne12PM;
  double dayOne2PM;
  double dayOne4PM;
  double dayOne6PM;
  double dayOne8PM;
  double dayOne10PM;

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
    required this.dayOne2AM,
    required this.dayOne4AM,
    required this.dayOne6AM,
    required this.dayOne8AM,
    required this.dayOne10AM,
    required this.dayOne12PM,
    required this.dayOne2PM,
    required this.dayOne4PM,
    required this.dayOne6PM,
    required this.dayOne8PM,
    required this.dayOne10PM,
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
      dayOne2AM: dayOne2AM['temp_c'],
      dayOne4AM: dayOne4AM['temp_c'],
      dayOne6AM: dayOne6AM['temp_c'],
      dayOne8AM: dayOne8AM['temp_c'],
      dayOne10AM: dayOne10AM['temp_c'],
      dayOne12PM: dayOne12PM['temp_c'],
      dayOne2PM: dayOne2PM['temp_c'],
      dayOne4PM: dayOne4PM['temp_c'],
      dayOne6PM: dayOne6PM['temp_c'],
      dayOne8PM: dayOne8PM['temp_c'],
      dayOne10PM: dayOne10PM['temp_c'],
    );
  }

  @override
  String toString() {
    return 'city = $cityName  , country = $countryName , temp = $temp';
  }
}
