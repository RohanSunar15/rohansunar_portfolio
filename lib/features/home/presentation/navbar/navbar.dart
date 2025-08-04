import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/animated_hover_text.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';

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

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockHeight * 2,
        horizontal: SizeConfig.blockWidth * 4,
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
                        colors: [AppColors.buttonBlue, AppColors.buttonPurple],
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
                          color: _isHovered ? AppColors.white : AppColors.black,
                          size: SizeConfig.blockWidth * 1,
                        ),
                        SizedBox(width: SizeConfig.blockWidth * 0.5),
                        Text(
                          'Resume',
                          style: TextStyle(
                            fontSize: SizeConfig.blockWidth * 0.9,
                            color:
                                _isHovered ? AppColors.white : AppColors.black,
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
    );
  }
}
