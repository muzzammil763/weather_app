class WeatherModel {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feelsLike;

  WeatherModel({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.pressure,
    this.feelsLike,
  });

  WeatherModel.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    humidity = json['main']['humidity'];
    pressure = json['main']['pressure'];
    feelsLike = json['main']['feels_like'];
  }
}
