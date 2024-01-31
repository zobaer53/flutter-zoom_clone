import 'package:flutter/material.dart';
import 'package:flutter_zoom_clone/screens/home_scrren.dart';
import 'package:flutter_zoom_clone/screens/login_screen.dart';
import 'package:flutter_zoom_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      routes: {
        '/login': (ctx) => const LoginScreen(),
        '/home': (ctx) => const HomeScreen(),
      },
      home: const LoginScreen(),
    );
  }
}

