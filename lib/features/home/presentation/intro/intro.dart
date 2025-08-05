import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/assets/app_images.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/animated_skill_tag.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_social_Icon_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/core/widgets/scroll_down_button.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  bool _isHovered = false;
  bool _isContactMeHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(10),
        border: Border.all(color: Colors.white.withAlpha(25)),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: SizeConfig.blockHeight * 30,
              top: SizeConfig.blockWidth * 4,
              bottom: SizeConfig.blockWidth * 2.5,
              left: SizeConfig.blockHeight * 10,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: SizeConfig.blockWidth * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Rohan Kamal',
                        color: AppColors.white,
                        fontSize: SizeConfig.blockWidth * 5,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: 'Sunar',
                        fontSize: SizeConfig.blockWidth * 5,
                        fontWeight: FontWeight.bold,
                        isGradient: true,
                      ),
                      CustomText(
                        text: 'Flutter Developer',
                        textColor: AppColors.grey,
                        fontSize: SizeConfig.blockWidth * 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: SizeConfig.blockWidth * 1.3,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey,
                          ),
                          children: [
                            const TextSpan(
                              text: 'Building modern mobile apps with ',
                            ),
                            TextSpan(
                              text: 'Flutter',
                              style: TextStyle(
                                color: AppColors.primaryCyan,
                              ), // Flutter Blue
                            ),
                            const TextSpan(text: ' & '),
                            TextSpan(
                              text: 'Dart',
                              style: TextStyle(
                                color: AppColors.softPurple,
                              ), // Dart Purple
                            ),
                            const TextSpan(
                              text:
                                  '. Passionate \nabout clean UI and performance-optimized development.',
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            MouseRegion(
                              onEnter: (_) => setState(() => _isHovered = true),
                              onExit: (_) => setState(() => _isHovered = false),
                              child: SizedBox(
                                height: SizeConfig.blockHeight * 7,
                                width: SizeConfig.blockWidth * 10,
                                child: CustomButton(
                                  padding: EdgeInsets.all(
                                    SizeConfig.blockWidth * 1.1,
                                  ),
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
                                                color: Colors.cyanAccent
                                                    .withAlpha(150),
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
                                      CustomText(
                                        text: 'View Projects',
                                        fontSize: SizeConfig.blockWidth * 1,
                                        textColor: AppColors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 50),
                            MouseRegion(
                              onEnter:
                                  (_) => setState(
                                    () => _isContactMeHovered = true,
                                  ),
                              onExit:
                                  (_) => setState(
                                    () => _isContactMeHovered = false,
                                  ),
                              child: SizedBox(
                                height: SizeConfig.blockHeight * 7,
                                width: SizeConfig.blockWidth * 10,
                                child: CustomButton(
                                  padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.blockHeight * 3,
                                    horizontal: SizeConfig.blockWidth * 2.5,
                                  ),
                                  decoration: BoxDecoration(
                                    boxShadow:
                                        _isContactMeHovered
                                            ? [
                                              BoxShadow(
                                                color: Colors.cyanAccent
                                                    .withAlpha(150),
                                                blurRadius: 40,
                                                spreadRadius: 1,
                                                offset: const Offset(0, 4),
                                              ),
                                            ]
                                            : [],
                                  ),
                                  borderSideColor:
                                      _isContactMeHovered
                                          ? AppColors.primaryCyan
                                          : AppColors.grey,
                                  borderRadius: 15,
                                  backgroundColor:
                                      _isContactMeHovered
                                          ? AppColors.softPurple
                                          : AppColors.transparent,
                                  overlayColor: AppColors.transparent,
                                  childWidget: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Contact Me',
                                        style: TextStyle(
                                          fontSize: SizeConfig.blockWidth * 0.9,
                                          color:
                                              _isContactMeHovered
                                                  ? AppColors.black
                                                  : AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.blockHeight * 2,
                          horizontal: SizeConfig.blockWidth * 4,
                        ),
                        child: Row(
                          children: [
                            SocialIconButton(
                              icon: FontAwesomeIcons.github,
                              iconColor: AppColors.white,
                              onTap: () {},
                            ),
                            SizedBox(width: SizeConfig.blockWidth * 2),
                            SocialIconButton(
                              icon: FontAwesomeIcons.linkedin,
                              iconColor: AppColors.white,
                              onTap: () {},
                            ),
                            SizedBox(width: SizeConfig.blockWidth * 2),

                            SocialIconButton(
                              icon: Icons.email_outlined,
                              iconColor: AppColors.white,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: SizeConfig.blockWidth * 25,
                        height: SizeConfig.blockWidth * 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.tealAccent,
                            width: 2,
                          ),
                          image: const DecorationImage(
                            image: AssetImage(AppImages.profileImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      AnimatedSkillTag(
                        label: 'Flutter',
                        color: AppColors.primaryCyan,
                        startOffset: Offset(
                          SizeConfig.blockWidth * 19,
                          SizeConfig.blockHeight * -8,
                        ),
                      ),
                      AnimatedSkillTag(
                        label: 'Dart',
                        color: AppColors.softPurple,
                        startOffset: Offset(
                          SizeConfig.blockWidth * -3,
                          SizeConfig.blockHeight * 5,
                        ),
                      ),
                      AnimatedSkillTag(
                        label: 'Firebase',
                        color: AppColors.successGreen,
                        startOffset: Offset(
                          SizeConfig.blockWidth * 23,
                          SizeConfig.blockHeight * 35,
                        ),
                      ),
                      AnimatedSkillTag(
                        label: 'Node.js',
                        color: AppColors.vibrantOrange,
                        startOffset: Offset(
                          SizeConfig.blockWidth * 5,
                          SizeConfig.blockHeight * 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DropArrowButton(onTap: () {}),
          ),
        ],
      ),
    );
  }
}
