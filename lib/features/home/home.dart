import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/features/home/section/aboutme/about_me.dart';
import 'package:rohansunar_portfolio/features/home/section/navbar/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavbarSection(
            ),
            AboutMeSection(),
          ],
        ),
      )
    );
  }
}
