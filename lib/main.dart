import 'package:flutter/material.dart';
import 'package:map_demo/screens/home/screen_home.dart';
import 'package:map_demo/screens/map/screen_show_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: 'first',
      routes: {
        'first': (context) => const ScreenHome(),
        'second': (context) => const ScreenShowMaps()
      },
    );
  }
}
