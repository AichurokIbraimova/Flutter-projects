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

const List cities = <String>[
  'Bishkek',
  'osh',
  'Jalal-Abab',
  'Karakol',
  'Naryn',
  'Talas',
  'Batken',
  'Tokmok'
];

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
    if (permission == LocationPermission.always &&
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();

      final response = await dio.get(
          ApiConst.address(lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['main']['temp'],
          name: response.data['timezone'],
        );
        setState(() {});
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();

      final response = await dio.get(
          ApiConst.address(lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['main']['temp'],
          name: response.data['timezone'],
        );
        setState(() {});
      }
    }
  }

  ///////////////////////////////////////////
  Future<void> fetchData([String? url]) async {
    Dio dio = Dio();

    final response = await dio.get(ApiConst.weatherData(url ?? 'Bishkek'));
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
    super.initState;
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Weather App')),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('water.jpg'),
            ),
          ),
          child: weather == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () async {
                              await getlocation();
                            },
                            icon: const Icon(
                              Icons.near_me,
                              size: 40,
                              color: AppColors.iconColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              showBottom();
                            },
                            icon: const Icon(
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
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                        ),
                        Text(
                          '${weather!.temp.toInt()}°C',
                          style: AppTextStyles.sanTextStyle,
                        ),
                        Image.network(ApiConst.getIcon(weather!.icon, 4)),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: FittedBox(
                          child: Text(
                            weather!.description.replaceAll(' ', '\n'),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                            ),
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
                            style: const TextStyle(
                                color: Colors.white, fontSize: 80),
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

  void showBottom() async {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[700],
            ),
            child: ListView.builder(
                itemCount: cities.length,
                itemBuilder: (context, index) {
                  final name = cities[index];
                  return Card(
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          weather = null;
                        });
                        fetchData(name);
                        Navigator.pop(context);
                      },
                      title: Text(
                        '$name',
                        style: AppTextStyles.showTextStyle,
                      ),
                    ),
                  );
                }),
          );
        });
  }
}
