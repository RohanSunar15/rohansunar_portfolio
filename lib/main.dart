import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_theme.dart';
import 'package:rohansunar_portfolio/features/bloc/home_bloc.dart';
import 'package:rohansunar_portfolio/features/home/home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return MaterialApp(
      title: 'Rohan Sunar',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => HomeBloc(), child: Home()),
    );
  }
}
