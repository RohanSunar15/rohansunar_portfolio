import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/features/home/presentation/aboutme/about_me.dart';
import 'package:rohansunar_portfolio/features/home/presentation/contact/contact.dart';
import 'package:rohansunar_portfolio/features/home/presentation/footer/footer_section.dart';
import 'package:rohansunar_portfolio/features/home/presentation/intro/intro.dart';
import 'package:rohansunar_portfolio/features/home/presentation/projects/projects.dart';
import 'package:rohansunar_portfolio/features/home/presentation/skills/skills.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: CustomText(
                text: 'RKS',
                fontSize: SizeConfig.blockWidth * 2,
                fontWeight: FontWeight.bold,
                isGradient: true,
                isHoverable: false,
                onTap: () {},
              ),
            ),
            ListTile(title: CustomText(text: 'Contact')),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Intro Section,
            const IntroSection(),

            // About Me Section
            AboutMeSection(),

            // Skills Section
            SkillsSection(),

            //Projects Section
            ProjectsSection(),

            //Contact Section
            ContactSection(),

            // Footer Section
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
