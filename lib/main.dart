
import 'package:flutter/material.dart';

import 'Page/map_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> placesList = [
    {
      'name': 'Colombo',
    'longitude': 79.8612,
    'latitude': 6.9271,
  },
    {
    'name': 'Kandy',
    'longitude': 80.6393,
    'latitude': 7.2906,
    },
    {
    'name': 'Galle',
    'longitude': 80.2170,
    'latitude': 6.0535,
    },];

    String startingpoint = "peradeniya";
    String endpoint = "kandy";

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MapPage(placesList: placesList, startingPoint: startingpoint , endingPoint: endpoint,),
    );
  }
}

