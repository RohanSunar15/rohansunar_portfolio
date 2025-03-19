import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/theme/app_theme.dart';
import 'package:rohansunar_portfolio/features/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rohan Sunar\'s Portfolio',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

