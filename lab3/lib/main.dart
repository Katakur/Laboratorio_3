import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pages.dart';

// Ignacio Carlo Veas Mattheos 20857446-9
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      theme: ThemeData(
        fontFamily: 'Mario',
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 244, 219, 56)),
        useMaterial3: true,
      ),
      home: const 
      MyHomePage(title: 'Contador (Menu)'),
    );
  }
}

