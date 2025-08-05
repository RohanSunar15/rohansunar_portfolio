import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/section_scroller/section_scroller.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/animated_hover_text.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/features/bloc/home_bloc.dart';

class NavbarSection extends StatefulWidget {
  const NavbarSection({super.key});

  @override
  State<NavbarSection> createState() => _NavbarSectionState();
}

class _NavbarSectionState extends State<NavbarSection> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is ScrollToSectionState) {
          SectionScroller.scrollToSection(state.section);
        }
      },
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1000.0, sigmaY: 1000.0),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockHeight * 2.3,
              horizontal: SizeConfig.blockWidth * 4,
            ),
            decoration: BoxDecoration(
              color: AppColors.transparent.withAlpha(12),
              border: Border(
                bottom: BorderSide(
                  color: AppColors.grey.withAlpha(100),
                  width: 1.0,
                ),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedHoverText(
                  duration: Duration(milliseconds: 300),
                  child: CustomText(
                    text: 'RKS',
                    fontSize: SizeConfig.blockWidth * 2,
                    fontWeight: FontWeight.bold,
                    isGradient: true,
                    isHoverable: false,
                  ),
                ),

                const Spacer(),
                Row(
                  children: [
                    AnimatedHoverText(
                      child: CustomText(
                        text: 'About',
                        fontSize: SizeConfig.blockWidth * 1.2,
                        color: AppColors.grey,
                        padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
                        isHoverable: true,
                        onTap: () {
                          context.read<HomeBloc>().add(
                            ScrollToSectionEvent('about'),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockWidth * 1.5),
                    AnimatedHoverText(
                      child: CustomText(
                        text: 'Skills',
                        fontSize: SizeConfig.blockWidth * 1.2,
                        color: AppColors.grey,
                        padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
                        isHoverable: true,
                        onTap: () {
                          context.read<HomeBloc>().add(
                            ScrollToSectionEvent('skills'),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockWidth * 1.5),
                    AnimatedHoverText(
                      child: CustomText(
                        text: 'Projects',
                        fontSize: SizeConfig.blockWidth * 1.2,
                        color: AppColors.grey,
                        padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
                        isHoverable: true,
                        onTap: () {
                          context.read<HomeBloc>().add(
                            ScrollToSectionEvent('projects'),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockWidth * 1.5),
                    AnimatedHoverText(
                      child: CustomText(
                        text: 'Contact',
                        fontSize: SizeConfig.blockWidth * 1.2,
                        color: AppColors.grey,
                        padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
                        isHoverable: true,
                        onTap: () {
                          context.read<HomeBloc>().add(
                            ScrollToSectionEvent('contact'),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockWidth * 1.5),
                    MouseRegion(
                      onEnter: (_) => setState(() => _isHovered = true),
                      onExit: (_) => setState(() => _isHovered = false),
                      child: SizedBox(
                        width: SizeConfig.blockWidth * 8,
                        child: CustomButton(
                          padding: EdgeInsets.all(SizeConfig.blockWidth * 1.1),
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
                                size: SizeConfig.blockWidth * 1,
                              ),
                              SizedBox(width: SizeConfig.blockWidth * 0.5),
                              Text(
                                'Resume',
                                style: TextStyle(
                                  fontSize: SizeConfig.blockWidth * 0.9,
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
