import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/features/home/presentation/navbar/navbar.dart';
import 'package:rohansunar_portfolio/features/home/presentation/skills/skills.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [NavbarSection(), SkillsSection()]),
      ),
    );
  }
}
