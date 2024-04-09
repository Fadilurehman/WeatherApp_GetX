import 'dart:convert';

// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/Models/weather_api.dart';
import 'package:weather_app/location/location.dart';

const apikey = '543de3f63148f598e4c8e32967ff2baa';
const String domain = 'https://api.openweathermap.org/data/2.5/weather?';
const lat = '11.1557';

const long = '75.8912';
st s = st();

final uri =
    Uri.parse('${domain}lat=$lat&lon=$long&appid=$apikey&&units=metric');

Future<WeatherApi> getCurrentCityWeather() async {
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    final weatherApi = WeatherApi.fromJson(jsonResponse);
    return weatherApi;
  } else {
    print("not recived");

    throw Exception('Failed to fetch weather data.');
  }
}

getCurrentCityWeather2(String city) async {
  final uri2 = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apikey&&units=metric');

  final response = await http.get(uri2);
  if (response.statusCode == 200) {
    final jsonResponse = response.body;

    final weatherApi = WeatherApi.fromJson(jsonDecode(jsonResponse));
    return weatherApi;
  } else {
    // ignore: avoid_print
    print("not recived");

    throw ('Failed to fetch weather data.');
  }
}
