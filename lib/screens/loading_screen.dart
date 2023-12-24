// ignore_for_file: library_private_types_in_public_api, unused_local_variable, avoid_print, use_key_in_widget_constructors, prefer_const_constructors

import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weatherModel=WeatherModel();
    var weatherData=await weatherModel.getLocationWeather();
     Navigator.push(context, MaterialPageRoute(builder: (_){return LocationScreen(locationWeather: weatherData,);}));
  }


@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(child: SpinKitDoubleBounce(
      color: Colors.black,
      size: 100.0,
    ),),
  );
}
}