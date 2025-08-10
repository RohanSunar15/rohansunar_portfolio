import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/animated_hover_text.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/features/bloc/home_bloc.dart';
import 'package:rohansunar_portfolio/features/bloc/home_event.dart';

class MobileNavDrawer extends StatefulWidget {
  const MobileNavDrawer({super.key});

  @override
  State<MobileNavDrawer> createState() => _MobileNavDrawerState();
}

class _MobileNavDrawerState extends State<MobileNavDrawer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockWidth * 1,
              vertical: SizeConfig.blockWidth * 1,
            ),
            child: ListView(
              children: [
                ListTile(
                  title: CustomText(
                    text: 'RKS',
                    fontSize: SizeConfig.blockWidth * 7,
                    fontWeight: FontWeight.bold,
                    isGradient: true,
                    isHoverable: false,
                    onTap: () {
                      Navigator.of(context).pop();
                      context.read<HomeBloc>().add(
                        ScrollToSectionEvent('home'),
                      );
                    },
                  ),
                ),

                ListTile(
                  title: AnimatedHoverText(
                    child: CustomText(
                      text: 'About',
                      textAlign: TextAlign.center,
                      fontSize: SizeConfig.blockWidth * 3.5,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.read<HomeBloc>().add(
                          ScrollToSectionEvent('about'),
                        );
                      },
                    ),
                  ),
                ),
                ListTile(
                  title: AnimatedHoverText(
                    child: CustomText(
                      text: 'Skills',
                      textAlign: TextAlign.center,
                      fontSize: SizeConfig.blockWidth * 3.5,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.read<HomeBloc>().add(
                          ScrollToSectionEvent('skills'),
                        );
                      },
                    ),
                  ),
                ),
                ListTile(
                  title: AnimatedHoverText(
                    child: CustomText(
                      text: 'Projects',
                      textAlign: TextAlign.center,
                      fontSize: SizeConfig.blockWidth * 3.5,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.read<HomeBloc>().add(
                          ScrollToSectionEvent('projects'),
                        );
                      },
                    ),
                  ),
                ),
                ListTile(
                  title: AnimatedHoverText(
                    child: CustomText(
                      text: 'Contact',
                      textAlign: TextAlign.center,
                      fontSize: SizeConfig.blockWidth * 3.5,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.read<HomeBloc>().add(
                          ScrollToSectionEvent('contact'),
                        );
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: MouseRegion(
                    onEnter: (_) => setState(() => _isHovered = true),
                    onExit: (_) => setState(() => _isHovered = false),
                    child: SizedBox(
                      width: SizeConfig.blockWidth * 0.1,
                      child: CustomButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(
                            DownloadResumeRequested(),
                          );
                        },
                        padding: EdgeInsets.all(SizeConfig.blockWidth * 0.5),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.buttonBlue,
                              AppColors.buttonPurple,
                            ],
                          ),
                          boxShadow:
                              _isHovered
                                  ? [
                                    BoxShadow(
                                      color: Colors.cyanAccent.withAlpha(150),
                                      blurRadius: 40,
                                      spreadRadius: 1,
                                      offset: const Offset(0, 4),
                                    ),
                                  ]
                                  : [],
                          borderRadius: BorderRadius.circular(
                            SizeConfig.blockWidth * 1.1,
                          ),
                        ),
                        childWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.download,
                              color:
                                  _isHovered
                                      ? AppColors.white
                                      : AppColors.black,
                              size: SizeConfig.blockWidth * 3,
                            ),
                            SizedBox(width: SizeConfig.blockWidth * 0.5),
                            Text(
                              'Resume',
                              style: TextStyle(
                                fontSize: SizeConfig.blockWidth * 3,
                                color:
                                    _isHovered
                                        ? AppColors.white
                                        : AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
