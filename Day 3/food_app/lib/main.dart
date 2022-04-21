import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      routes: {
        '/': (context) => const MainScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
