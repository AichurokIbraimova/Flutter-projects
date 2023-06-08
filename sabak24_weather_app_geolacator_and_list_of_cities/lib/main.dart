import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sabak24_weather_app_geolacator_and_list_of_cities/constants/api_const.dart';
import 'package:sabak24_weather_app_geolacator_and_list_of_cities/constants/app_colors.dart';
import 'package:sabak24_weather_app_geolacator_and_list_of_cities/constants/app_text_styles.dart';
import 'package:sabak24_weather_app_geolacator_and_list_of_cities/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Weather? weather;
  Future<void> getlocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
  }

  ///////////////////////////////////////////
  Future<void> fetchData() async {
    Dio dio = Dio();

    final response = await dio.get(ApiConst.WeatherData);
    if (response.statusCode == 200) {
      weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    fetchData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Weather App')),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('water.jpg'),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () async {
                        getlocation();
                      },
                      icon: Icon(
                        Icons.near_me,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_city,
                        color: AppColors.iconColor,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Text(
                    '${(weather!.temp - 273.15).toInt()}',
                    style: AppTextStyles.sanTextStyle,
                  ),
                  Image.network(ApiConst.getIcon(weather!.icon, 4)),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FittedBox(
                  child: Text(
                    weather!.description.replaceAll('', '\n'),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      weather!.name,
                      style: const TextStyle(color: Colors.white, fontSize: 80),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
