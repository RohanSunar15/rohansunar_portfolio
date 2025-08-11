import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/animated_hover_text.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/features/bloc/home_bloc.dart';
import 'package:rohansunar_portfolio/features/bloc/home_event.dart';
import 'package:rohansunar_portfolio/features/home/presentation/contact/contact.dart';
import 'package:rohansunar_portfolio/features/home/presentation/footer/footer_section.dart';
import 'package:rohansunar_portfolio/features/home/presentation/navbar/mobile_nav_drawer.dart';
import 'package:rohansunar_portfolio/features/home/presentation/navbar/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {},
      child: Scaffold(
        appBar:
            SizeConfig.isMobile(context)
                ? AppBar(
                  title: AnimatedHoverText(
                    duration: Duration(milliseconds: 300),
                    child: CustomText(
                      text: 'RKS',
                      fontSize: SizeConfig.blockWidth * 6,
                      fontWeight: FontWeight.bold,
                      isGradient: true,
                      isHoverable: false,
                      onTap: () {
                        context.read<HomeBloc>().add(
                          ScrollToSectionEvent('home'),
                        );
                      },
                    ),
                  ),
                  actions: [
                    Builder(
                      builder:
                          (context) => IconButton(
                            icon: Icon(Icons.menu, color: AppColors.white),
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                          ),
                    ),
                  ],
                )
                : PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: const NavbarSection(),
                ),
        endDrawer: MobileNavDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Intro Section,
              // const IntroSection(),
              //
              // // About Me Section
              // AboutMeSection(),
              //
              // // Skills Section
              // SkillsSection(),
              //
              // //Projects Section
              // ProjectsSection(),

              //Contact Section
              ContactSection(),

              // Footer Section
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
