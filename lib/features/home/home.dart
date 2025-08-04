import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/features/home/presentation/aboutme/about_me.dart';
import 'package:rohansunar_portfolio/features/home/presentation/contact/contact.dart';
import 'package:rohansunar_portfolio/features/home/presentation/intro/intro.dart';
import 'package:rohansunar_portfolio/features/home/presentation/navbar/navbar.dart';
import 'package:rohansunar_portfolio/features/home/presentation/projects/projects.dart';
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
            IntroSection(),

            // About Me Section
            AboutMeSection(),

            // Skills Section
            SkillsSection(),

            //Projects Section
            ProjectsSection(),

            //Contact Section
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
