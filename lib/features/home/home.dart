import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/features/home/presentation/aboutme/about_me.dart';
import 'package:rohansunar_portfolio/features/home/presentation/intro/intro.dart';
import 'package:rohansunar_portfolio/features/home/presentation/navbar/navbar.dart';
import 'package:rohansunar_portfolio/features/home/presentation/skills/skills.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavbarSection(),

            //Intro Section,
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(10),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white.withAlpha(25)),
                    ),
                    child: const IntroSection(),
                  ),
                ),
              ),
            ),

            // About Me Section
            AboutMeSection(),

            // Skills Section
            SkillsSection(),
          ],
        ),
      ),
    );
  }
}
